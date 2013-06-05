package com.byspace.console.menu.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.console.menu.entity.MenuItem;
import com.byspace.console.menu.po.MenuItemData;
import com.byspace.console.menu.service.MenuItemService;
import com.byspace.util.CustomLogger;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-4
 * Time: 下午5:00
 */
@Controller
@RequestMapping("/console/menu")
public class MenuItemController {

	@Autowired
	private MenuItemService menuItemService;

	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("firstLevelMenuItemList", menuItemService.getFirstLevelMenuItems());
		return "console/menu/index";
	}

	@RequestMapping("getMenuItemDataByParentId/{parentMenuItemId}")
	@ResponseBody
	public List<MenuItemData> getMenuItemDataByParentId(@PathVariable("parentMenuItemId")int parentMenuItemId) {
		return menuItemService.getMenuItemDataListByParentId(parentMenuItemId);
	}

	@RequestMapping("getMenuItemDataWithRoot")
	@ResponseBody
	public List<MenuItemData> getMenuItemDataWithRoot() {
		List<MenuItemData> list = new ArrayList<MenuItemData>();
		list.add(menuItemService.getMenuItemDataWithRoot());
		return list;
	}

    @RequestMapping("readMenuItem/{menuItemId}")
    @ResponseBody
    public MenuItem readMenuItem(@PathVariable("menuItemId")int menuItemId) {
        return menuItemService.readMenuItem(menuItemId);
    }

	@RequestMapping("saveMenuItem")
	@ResponseBody
	public JsonResult saveMenuItem(MenuItem menuItem) {
		try {

			MenuItem savedMenuItem = menuItemService.readMenuItem(menuItem.getId());
			if (savedMenuItem == null) {
				savedMenuItem = new MenuItem();
			}
			savedMenuItem.setName(menuItem.getName());
			savedMenuItem.setLink(menuItem.getLink());
			savedMenuItem.setIcon(menuItem.getIcon());
			savedMenuItem.setParentMenuItemId(menuItem.getParentMenuItemId());
			savedMenuItem.setTreeOrder(menuItemService.getMaxChildTreeOrder(menuItem.getParentMenuItemId()));

			menuItemService.saveMenuItem(savedMenuItem);

			return JsonResult.success("保存成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("保存失败");
		}
	}

	@RequestMapping("delete/{menuItemId}")
	@ResponseBody
	public JsonResult delete(@PathVariable("menuItemId")int menuItemId) {
		try {

			menuItemService.deleteMenuItem(menuItemId);

			return JsonResult.success("删除成功");
		} catch (Exception e) {
			return JsonResult.fail("删除失败");
		}
	}

	@RequestMapping("move/{sourceId}/{targetId}/{point}")
	@ResponseBody
	public JsonResult move(@PathVariable("sourceId")int sourceId, @PathVariable("targetId")int targetId, @PathVariable("point")String point) {
		try {

			menuItemService.moveMenuItem(sourceId, targetId, point);

			return JsonResult.success("操作成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("操作失败");
		}
	}
}