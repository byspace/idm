package com.byspace.secutiry.service.entity;

import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;

/**
 * description:
 * User: yangxu103016
 * Date: 12-12-17
 * Time: 下午2:10
 */
@Entity
@Table(name = "security_role")
public class Role implements GrantedAuthority {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "name")
	private String name;

	@Override
	public String getAuthority() {
		return getName();
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
}
