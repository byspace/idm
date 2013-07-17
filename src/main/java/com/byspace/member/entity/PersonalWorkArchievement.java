package com.byspace.member.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-15
 * Time: 上午9:56
 */
@Entity
@Table(name = "mem_personal_work_archievement")
public class PersonalWorkArchievement {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "type")
	private String type;
	@Column(name = "detail")
	private String detail;

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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
}
