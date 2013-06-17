package com.byspace.console.template.entity;

import com.byspace.common.service.SimpleDataGridRow;

import javax.persistence.*;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-15
 * Time: 下午5:07
 */
@Entity
@Table(name = "tpl_panel_template")
public class PanelTemplate implements SimpleDataGridRow {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "code")
	private String code;
	@Column(name = "type")
	private String type;
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@OrderBy("order ASC")
	private Set<ViewItem> viewItemList = new TreeSet<ViewItem>();
	@Column(name = "detail")
	@Lob
	private String detail;

	@Override
	public List<String> getFields() {
		return Arrays.asList(
				"id",
				"name",
				"code",
				"type",
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

	public Set<ViewItem> getViewItemList() {
		return viewItemList;
	}

	public void setViewItemList(Set<ViewItem> viewItemList) {
		this.viewItemList = viewItemList;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
}
