package com.byspace.console.menu.service.impl;

import com.byspace.common.po.TreeData;
import com.byspace.common.po.TreePosition;
import com.byspace.common.po.TreeRelationship;
import com.byspace.common.service.TreeService;
import com.byspace.console.menu.entity.MenuItem;
import com.byspace.console.menu.service.MenuItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-4
 * Time: 下午4:09
 */
@Service("menuItemService")
@Transactional
public class MenuItemServiceImpl implements MenuItemService {

	@PersistenceContext
	private EntityManager em;
	@Autowired
	private TreeService treeService;

	private static final int FIRST_LEVEL_MENUITEM_PARENT_ID = 0;

	@Override
	@Transactional(readOnly = true)
	public List<MenuItem> getFirstLevelMenuItems() {
		String hql = "from MenuItem as m where m.parentMenuItemId = :parentMenuItemId order by m.treeOrder asc";
		Query query = em.createQuery(hql);
		query.setParameter("parentMenuItemId", FIRST_LEVEL_MENUITEM_PARENT_ID);

		return query.getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public List<TreeData> getMenuItemDataListByParentId(int parentMenuItemId) {

		List<TreeData> menuItemDataList = new ArrayList<TreeData>();

		List<MenuItem> menuItemList = this.getMenuItemListByParentId(parentMenuItemId);
		for (MenuItem menuItemEntity : menuItemList) {
			TreeData menuItemData = menuItemEntity.buildTreeData();
			menuItemData.setChildren(this.getMenuItemDataListByParentId(menuItemEntity.getId()));

			menuItemDataList.add(menuItemData);
		}

		return menuItemDataList;
	}

	private List<MenuItem> getMenuItemListByParentId(int parentMenuItemId) {
		String hql = "from MenuItem as m where m.parentMenuItemId = :parentMenuItemId order by m.treeOrder asc";
		Query query = em.createQuery(hql);
		query.setParameter("parentMenuItemId", parentMenuItemId);
		List<MenuItem> menuItemList = query.getResultList();

		return menuItemList;
	}

	@Override
	@Transactional(readOnly = true)
	public TreeData getMenuItemDataWithRoot() {

		TreeData rootMenuItemData = new TreeData();
		rootMenuItemData.setId(0);
		rootMenuItemData.setText("根路径");
		rootMenuItemData.setIconCls("");
		rootMenuItemData.setChildren(this.getMenuItemDataListByParentId(0));

		return rootMenuItemData;
	}

	@Override
    @Transactional(readOnly = true)
    public MenuItem readMenuItem(int menuItemId) {
        MenuItem menuItem = em.find(MenuItem.class, menuItemId);
		return menuItem;
    }

	@Override
	public void saveMenuItem(MenuItem menuItem) {
		if (menuItem.getId() == 0) {
			em.persist(menuItem);
		} else {
			em.merge(menuItem);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public double getMaxChildTreeOrder(int parentMenuItemId) {

		String hql = "from MenuItem m where m.parentMenuItemId=:parentMenuItemId order by m.treeOrder desc";
		Query query = em.createQuery(hql);
		query.setParameter("parentMenuItemId", parentMenuItemId);

		List<MenuItem> menuItemList = query.getResultList();
		if (menuItemList.size() == 0) {
			return 0d;
		} else {
			return menuItemList.get(0).getTreeOrder();
		}
	}

	@Override
	public void deleteMenuItem(int menuItemId) {
		MenuItem menuItem = em.find(MenuItem.class, menuItemId);
		List<MenuItem> childrenMenuItem = this.getMenuItemListByParentId(menuItemId);

		em.remove(menuItem);
		for(MenuItem childMenuItem : childrenMenuItem) {
			deleteMenuItem(childMenuItem.getId());
		}
	}

	@Override
	public void moveMenuItem(int sourceId, int targetId, String point) {
		MenuItem menuItem = this.readMenuItem(sourceId);
		MenuItem targetMenuItem = this.readMenuItem(targetId);

		List brother = this.getMenuItemListByParentId(targetMenuItem.getParentMenuItemId());
		List children = this.getMenuItemListByParentId(targetMenuItem.getId());

		TreeRelationship treeRelationship = new TreeRelationship();
		treeRelationship.setParentNode(this.readMenuItem(targetMenuItem.getParentMenuItemId()));
		treeRelationship.setBrothers(brother);
		treeRelationship.setChildren(children);

		TreePosition treePosition = treeService.getPositionAfterDrag(menuItem, targetMenuItem, point, treeRelationship);
		menuItem.setParentMenuItemId(treePosition.getParentNodeId());
		menuItem.setTreeOrder(treePosition.getTreeOrder());

		em.merge(menuItem);
	}
}
