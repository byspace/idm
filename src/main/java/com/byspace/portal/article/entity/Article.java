package com.byspace.portal.article.entity;

import com.byspace.portal.topic.entity.Topic;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午4:53
 */
@Entity
@Table(name = "ptl_article")
public class Article {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "subject")
	private String subject;
	@OneToMany
	private List<KeyWord> keyWordList = new ArrayList<KeyWord>();
	@OneToOne
	private Category category;
	@OneToOne
	private ArticleType articleType;
	@Column(name = "source")
	private String source;
	@Column(name = "publish_date")
	private Date publishDate;
	@OneToOne
	private Topic topic;
	@Column(name = "summary")
	private String summary;
	@Column(name = "content")
	private String content;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public List<KeyWord> getKeyWordList() {
		return keyWordList;
	}

	public void setKeyWordList(List<KeyWord> keyWordList) {
		this.keyWordList = keyWordList;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public ArticleType getArticleType() {
		return articleType;
	}

	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
