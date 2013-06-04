package com.byspace.console.menu.service.impl;

import com.byspace.console.menu.entity.MenuItem;
import com.byspace.console.menu.po.MenuItemData;
import com.byspace.console.menu.service.MenuItemService;
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
	public List<MenuItemData> getMenuItemDataListByParentId(int parentMenuItemId) {

		List<MenuItemData> menuItemDataList = new ArrayList<MenuItemData>();

		String hql = "from MenuItem as m where m.parentMenuItemId = :parentMenuItemId order by m.treeOrder asc";
		Query query = em.createQuery(hql);
		query.setParameter("parentMenuItemId", parentMenuItemId);

		List<MenuItem> menuItemList = query.getResultList();
		for (MenuItem menuItemEntity : menuItemList) {
			MenuItemData menuItemData = MenuItemData.buildFormMenuItemEntity(menuItemEntity);
			menuItemData.setChildren(this.getMenuItemDataListByParentId(menuItemEntity.getId()));

			menuItemDataList.add(menuItemData);
		}

		return menuItemDataList;
	}
}
