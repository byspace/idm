package com.byspace.portal.article.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午4:58
 */
@Entity
@Table(name = "ptl_article_category")
public class Category {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "detail")
	@Lob
	private String detail;

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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
}
