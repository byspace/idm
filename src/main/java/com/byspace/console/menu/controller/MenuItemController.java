package com.byspace.console.menu.controller;

import com.byspace.console.menu.po.MenuItemData;
import com.byspace.console.menu.service.MenuItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
