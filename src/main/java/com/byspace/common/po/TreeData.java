package com.byspace.common.po;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:27
 */
public class TreeData {

	private int id;
	private String text;
	private String iconCls;
	private Map<String, String> attributes = new HashMap<String, String>();
	private List<TreeData> children = new ArrayList<TreeData>();

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

	public Map<String, String> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<String, String> attributes) {
		this.attributes = attributes;
	}

	public List<TreeData> getChildren() {
		return children;
	}

	public void setChildren(List<TreeData> children) {
		this.children = children;
	}
}
