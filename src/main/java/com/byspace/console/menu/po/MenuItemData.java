package com.byspace.console.menu.po;

import com.byspace.console.menu.entity.MenuItem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-4
 * Time: 下午4:52
 */
public class MenuItemData {
	private int id;
	private String text;
	private String iconCls;
	private Map<String, String> attributes = new HashMap<String, String>();

	private List<MenuItemData> children = new ArrayList<MenuItemData>();

	public static MenuItemData buildFormMenuItemEntity(MenuItem menuItemEntity) {
		MenuItemData menuItemData = new MenuItemData();
		menuItemData.setId(menuItemEntity.getId());
		menuItemData.setText(menuItemEntity.getName());
		menuItemData.setIconCls(menuItemEntity.getIcon());
		menuItemData.addAttribute("url", menuItemEntity.getLink());

		return menuItemData;
	}

	public void addAttribute(String key, String value) {
		if (attributes.containsKey(key)) {
			attributes.remove(key);
		}
		attributes.put(key, value);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public List<MenuItemData> getChildren() {
		return children;
	}

	public void setChildren(List<MenuItemData> children) {
		this.children = children;
	}

	public Map<String, String> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<String, String> attributes) {
		this.attributes = attributes;
	}
}
