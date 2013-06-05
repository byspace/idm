package com.byspace.common.po;

import com.byspace.common.service.TreeMoveable;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午2:41
 */
public class TreeRelationship {

	private TreeMoveable parentNode;
	private List<TreeMoveable> brothers = new ArrayList<TreeMoveable>();
	private List<TreeMoveable> children = new ArrayList<TreeMoveable>();

	public TreeMoveable getParentNode() {
		return parentNode;
	}

	public void setParentNode(TreeMoveable parentNode) {
		this.parentNode = parentNode;
	}

	public List<TreeMoveable> getBrothers() {
		return brothers;
	}

	public void setBrothers(List<TreeMoveable> brothers) {
		this.brothers = brothers;
	}

	public List<TreeMoveable> getChildren() {
		return children;
	}

	public void setChildren(List<TreeMoveable> children) {
		this.children = children;
	}
}
