package com.byspace.console.menu.service;

import com.byspace.common.po.TreeData;
import com.byspace.console.menu.entity.MenuItem;

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
	public List<TreeData> getMenuItemDataListByParentId(int parentMenuItemId);

	/**
	 * get menuitem json data with root
	 * @return
	 */
	public TreeData getMenuItemDataWithRoot();

    /**
     * read menuitem by id
     * @param menuItemId
     * @return
     */
    public MenuItem readMenuItem(int menuItemId);

	/**
	 * save menuitem or create new menuitem
	 * @param menuItem
	 */
	public void saveMenuItem(MenuItem menuItem);

	/**
	 * get max treeOrder under specified menuitem
	 * @param parentMenuItemId
	 * @return
	 */
	public double getMaxChildTreeOrder(int parentMenuItemId);

	/**
	 * delete menuitem and all children menuitem
	 * @param menuItemId
	 */
	public void deleteMenuItem(int menuItemId);

	/**
	 * move menuitem
	 * @param sourceId
	 * @param targetId
	 * @param point
	 */
	public void moveMenuItem(int sourceId, int targetId, String point);


}
