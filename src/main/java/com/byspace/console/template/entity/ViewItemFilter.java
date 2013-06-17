package com.byspace.console.template.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午10:32
 */
@Entity
@Table(name = "tpl_view_item_filter")
public class ViewItemFilter {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "view_item_code")
	private String viewItemCode;
	@Column(name = "topic_code")
	private String topicCode;
	@Column(name = "key")
	private String key;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTopicCode() {
		return topicCode;
	}

	public void setTopicCode(String topicCode) {
		this.topicCode = topicCode;
	}

	public String getViewItemCode() {
		return viewItemCode;
	}

	public void setViewItemCode(String viewItemCode) {
		this.viewItemCode = viewItemCode;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
}
