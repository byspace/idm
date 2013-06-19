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
public class ViewItemFilter implements Comparable<ViewItemFilter> {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "filter_key")
	private String key;

	@ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private ViewItem viewItem;
	@ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Topic topic;

	@Override
	public int compareTo(ViewItemFilter o) {
		if (this.id > o.getId()) {
			return 1;
		} else if (this.id < o.getId()) {
			return -1;
		}

		if (this.id == 0 && o.id == 0) {
			return 1;
		}

		return 0;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}
}
