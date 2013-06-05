package com.byspace.common.service;

import com.byspace.common.po.TreeData;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午12:30
 */
public interface TreeMoveable {

	public int getId();

	public double getTreeOrder();

	public TreeData buildTreeData();

}
