package com.byspace.common.po;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午12:28
 */
public class TreePosition {

	private int parentNodeId;
	private double treeOrder;

	public int getParentNodeId() {
		return parentNodeId;
	}

	public void setParentNodeId(int parentNodeId) {
		this.parentNodeId = parentNodeId;
	}

	public double getTreeOrder() {
		return treeOrder;
	}

	public void setTreeOrder(double treeOrder) {
		this.treeOrder = treeOrder;
	}
}
