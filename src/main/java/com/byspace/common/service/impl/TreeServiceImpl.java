package com.byspace.common.service.impl;

import com.byspace.common.po.TreePosition;
import com.byspace.common.po.TreeRelationship;
import com.byspace.common.service.TreeMoveable;
import com.byspace.common.service.TreeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午12:35
 */
@Service("treeService")
public class TreeServiceImpl implements TreeService {

	private static final String POINT_TOP = "top";
	private static final String POINT_BOTTOM = "bottom";
	private static final String POINT_APPEND = "append";

	@Override
	public TreePosition getPositionAfterDrag(TreeMoveable source, TreeMoveable target, String point, TreeRelationship treeRelationship) {

		if (POINT_TOP.equals(point)) {
			return getTopMoveTreePosition(source, target, point, treeRelationship);
		} else if (POINT_BOTTOM.equals(point)) {
			return getBottomMoveTreePosition(source, target, point, treeRelationship);
		} else if (POINT_APPEND.equals(point)) {
			return getAppendMoveTreePosition(source, target, point, treeRelationship);
		}

		return null;
	}

	private TreePosition getTopMoveTreePosition(TreeMoveable source, TreeMoveable target, String point, TreeRelationship treeRelationship) {
		TreePosition treePosition = new TreePosition();
		treePosition.setParentNodeId(treeRelationship.getParentNode().getId());

		TreeMoveable targetUpNode = this.getUpNode(target, treeRelationship);
		if (targetUpNode == null) {
			treePosition.setTreeOrder(target.getTreeOrder() / 2);
		} else {
			double order = (targetUpNode.getTreeOrder() + target.getTreeOrder()) / 2;
			treePosition.setTreeOrder(order);
		}
		return treePosition;
	}

	private TreePosition getBottomMoveTreePosition(TreeMoveable source, TreeMoveable target, String point, TreeRelationship treeRelationship) {
		TreePosition treePosition = new TreePosition();

		if (treeRelationship.getParentNode() == null) {
			treePosition.setParentNodeId(0);
		} else {
			treePosition.setParentNodeId(treeRelationship.getParentNode().getId());
		}

		TreeMoveable targetUnderNode = this.getDownNode(target, treeRelationship);
		if (targetUnderNode == null) {
			treePosition.setTreeOrder(target.getTreeOrder() + 1d);
		} else {
			double order = (targetUnderNode.getTreeOrder() + target.getTreeOrder()) / 2;
			treePosition.setTreeOrder(order);
		}
		return treePosition;
	}

	private TreePosition getAppendMoveTreePosition(TreeMoveable source, TreeMoveable target, String point, TreeRelationship treeRelationship) {
		TreePosition treePosition = new TreePosition();
		treePosition.setParentNodeId(target.getId());

		TreeMoveable lastChild = this.getLastChild(target, treeRelationship);
		if (lastChild == null) {
			treePosition.setTreeOrder(1d);
		} else {
			treePosition.setTreeOrder(lastChild.getTreeOrder() + 1d);
		}

		return treePosition;
	}

	private TreeMoveable getUpNode(TreeMoveable target, TreeRelationship treeRelationship) {
		List<TreeMoveable> borthers = treeRelationship.getBrothers();
		for (int i = 0; i < borthers.size(); i++) {
			TreeMoveable treeMoveable = borthers.get(i);
			if (treeMoveable.getId() == target.getId()) {
				if (i == 0) {
					return null;
				} else {
					return borthers.get(i - 1);
				}
			}
		}

		return null;
	}

	private TreeMoveable getDownNode(TreeMoveable target, TreeRelationship treeRelationship) {
		List<TreeMoveable> borthers = treeRelationship.getBrothers();
		for (int i = 0; i < borthers.size(); i++) {
			TreeMoveable treeMoveable = borthers.get(i);
			if (treeMoveable.getId() == target.getId()) {
				if (i == borthers.size() - 1) {
					return null;
				} else {
					return borthers.get(i + 1);
				}
			}
		}

		return null;
	}

	private TreeMoveable getLastChild(TreeMoveable target, TreeRelationship treeRelationship) {
		List<TreeMoveable> children = treeRelationship.getChildren();
		if (children.size() == 0) {
			return null;
		} else {
			return children.get(children.size() - 1);
		}
	}
}
