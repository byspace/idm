package com.byspace.console.template.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午10:18
 */
@Entity
@Table(name = "tpl_view_item")
public class ViewItem implements Comparable {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "type")
	private String type;
	@Column(name = "size")
	private int size;
	@Column(name = "detail")
	@Lob
	private String detail;
	@Column(name = "list_order")
	private int order;

	@Override
	public int compareTo(Object o) {
		ViewItem obj = (ViewItem)o;
		if (this.order > obj.order) {
			return 1;
		} else if (this.order < obj.order) {
			return -1;
		}
		return 0;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}
}
