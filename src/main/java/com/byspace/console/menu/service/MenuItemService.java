package com.byspace.console.menu.service;

import com.byspace.console.menu.entity.MenuItem;
import com.byspace.console.menu.po.MenuItemData;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-4
 * Time: 下午4:09
 */
public interface MenuItemService {

	/**
	 * get first level menuitem list
	 * @return
	 */
	public List<MenuItem> getFirstLevelMenuItems();

	/**
	 * get all child menuitem data list for easy-ui json format
	 * @param parentMenuItemId parent munuitem id
	 * @return
	 */
	public List<MenuItemData> getMenuItemDataListByParentId(int parentMenuItemId);
}
