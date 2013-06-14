package com.byspace.portal.topic.entity;

import com.byspace.common.po.TreeData;
import com.byspace.common.service.TreeMoveable;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:21
 */

@Entity
@Table(name = "ptl_topic")
public class Topic implements TreeMoveable {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "parent_topic_id")
	private int parentTopicId;
	@Column(name = "tree_order")
	private double treeOrder;
	@Column(name = "detail")
	@Lob
	private String detail;
	@Column(name = "code")
	private String code;

	@Override
	public TreeData buildTreeData() {
		TreeData treeData = new TreeData();
		treeData.setId(this.getId());
		treeData.setText(this.getName());
		treeData.setIconCls("");

		return treeData;
	}

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

	public int getParentTopicId() {
		return parentTopicId;
	}

	public void setParentTopicId(int parentTopicId) {
		this.parentTopicId = parentTopicId;
	}

	public double getTreeOrder() {
		return treeOrder;
	}

	public void setTreeOrder(double treeOrder) {
		this.treeOrder = treeOrder;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}
