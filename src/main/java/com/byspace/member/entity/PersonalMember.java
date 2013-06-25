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
	@Column(name = "country")
	private String country;
	@Column(name = "province")
	private String province;
	@Column(name = "city")
	private String city;
	@Column(name = "address")
	private String address;
	@Column(name = "phone")
	private String phone;
	@Column(name = "mobile")
	private String mobile;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalWorkType> personalWorkTypeSet = new HashSet<PersonalWorkType>();
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalDesignType> personalDesignTypeSet = new HashSet<PersonalDesignType>();

	public static PersonalMember buildFromMember(Member member) {
		PersonalMember personalMember = new PersonalMember();
		personalMember.setUserName(member.getUserName());
		personalMember.setPassword(member.getPassword());
		personalMember.setEmail(member.getEmail());

		return personalMember;
	}

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

	public Set<PersonalWorkType> getPersonalWorkTypeSet() {
		return personalWorkTypeSet;
	}

	public void setPersonalWorkTypeSet(Set<PersonalWorkType> personalWorkTypeSet) {
		this.personalWorkTypeSet = personalWorkTypeSet;
	}

	public Set<PersonalDesignType> getPersonalDesignTypeSet() {
		return personalDesignTypeSet;
	}

	public void setPersonalDesignTypeSet(Set<PersonalDesignType> personalDesignTypeSet) {
		this.personalDesignTypeSet = personalDesignTypeSet;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
