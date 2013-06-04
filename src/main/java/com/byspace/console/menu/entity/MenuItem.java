package com.byspace.console.menu.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: YangXu
 * Date: 13-6-4
 * Time: 下午4:03
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "csl_menuitem")
public class MenuItem {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "icon")
	private String icon;
	@Column(name = "link")
	private String link;
	@Column(name = "tree_order")
	private double treeOrder;
	@Column(name = "parent_menuitem_id")
	private int parentMenuItemId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public double getTreeOrder() {
		return treeOrder;
	}

	public void setTreeOrder(double treeOrder) {
		this.treeOrder = treeOrder;
	}

	public int getParentMenuItemId() {
		return parentMenuItemId;
	}

	public void setParentMenuItemId(int parentMenuItemId) {
		this.parentMenuItemId = parentMenuItemId;
	}
}
