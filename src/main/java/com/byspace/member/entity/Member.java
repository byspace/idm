package com.byspace.member.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午2:10
 */
@Entity
@Table(name = "mem_member")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class Member {

	@Id
	@GeneratedValue
	protected int id;
	@Column(name = "username")
	protected String userName;
	@Column(name = "password")
	protected String password;
	@Column(name = "email")
	protected String email;
	@Column(name = "name")
	protected String name;
	@Column(name = "introduction")
	@Lob
	protected String introduction;
	@Column(name = "regist_date")
	private Date registDate;
	@Column(name = "active")
	private boolean active;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}
