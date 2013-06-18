package com.byspace.console.template.entity;

import com.byspace.portal.topic.entity.Topic;

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
	@Column(name = "filter_key")
	private String key;

	@Transient
	private ViewItem viewItem;
	@Transient
	private Topic topic;

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

	public ViewItem getViewItem() {
		return viewItem;
	}

	public void setViewItem(ViewItem viewItem) {
		this.viewItem = viewItem;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getViewItemCode() {
		return viewItemCode;
	}

	public void setViewItemCode(String viewItemCode) {
		this.viewItemCode = viewItemCode;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}
}
