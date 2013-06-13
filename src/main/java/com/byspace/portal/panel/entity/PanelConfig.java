package com.byspace.portal.panel.entity;

import com.byspace.portal.topic.entity.Topic;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-13
 * Time: 上午9:30
 */
@Embeddable
public class PanelConfig {

	@ManyToOne(cascade = CascadeType.REFRESH)
	private Topic topic;
	@Column(name = "article_size")
	private int articleSize;

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public int getArticleSize() {
		return articleSize;
	}

	public void setArticleSize(int articleSize) {
		this.articleSize = articleSize;
	}
}
