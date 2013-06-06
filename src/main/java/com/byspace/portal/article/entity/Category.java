package com.byspace.portal.article.entity;

import com.byspace.common.service.SimpleDataGridRow;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午4:58
 */
@Entity
@Table(name = "ptl_article_category")
public class Category implements SimpleDataGridRow {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "detail")
	@Lob
	private String detail;

	@Override
	public List<String> getFields() {
		return Arrays.asList(
			"id",
			"name",
			"detail"
		);
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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
}
