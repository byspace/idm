package com.byspace.common.service;

import com.byspace.common.po.TreePosition;
import com.byspace.common.po.TreeRelationship;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午12:34
 */
public interface TreeService {

	public TreePosition getPositionAfterDrag(TreeMoveable source, TreeMoveable target, String point, TreeRelationship treeRelationship);
}
