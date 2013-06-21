package com.byspace.member.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午5:28
 */
@Entity
@Table(name = "mem_personal_member")
public class PersonalMember extends Member {

	@Column(name = "sex")
	private String sex;
	@Column(name = "province")
	private String province;
	@Column(name = "city")
	private String city;
	@Column(name = "address")
	private String address;
	@Column(name = "mobile")
	private String phone;
	@Column(name = "mobile")
	private String mobile;
	@ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private PersonalWorkType personalWorkType;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalDesignType> personalDesignTypeSet = new HashSet<PersonalDesignType>();

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public PersonalWorkType getPersonalWorkType() {
		return personalWorkType;
	}

	public void setPersonalWorkType(PersonalWorkType personalWorkType) {
		this.personalWorkType = personalWorkType;
	}

	public Set<PersonalDesignType> getPersonalDesignTypeSet() {
		return personalDesignTypeSet;
	}

	public void setPersonalDesignTypeSet(Set<PersonalDesignType> personalDesignTypeSet) {
		this.personalDesignTypeSet = personalDesignTypeSet;
	}
}
