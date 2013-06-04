package com.byspace.console.controller;

import com.byspace.console.menu.service.MenuItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Stone
 * Date: 13-6-2
 * Time: 下午3:19
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("console")
public class IndexController {

	@Autowired
	private MenuItemService menuItemService;

    @RequestMapping("index")
    public String index(Model model) {

		model.addAttribute("firstLevelMenuItemList", menuItemService.getFirstLevelMenuItems());

        return "console/index";
    }
}
