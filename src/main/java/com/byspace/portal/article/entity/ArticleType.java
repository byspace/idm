package com.byspace.portal.article.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午5:16
 */
@Entity
@Table(name = "ptl_article_type")
public class ArticleType {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;

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
}
