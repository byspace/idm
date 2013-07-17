package com.byspace.member.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-29
 * Time: 上午10:35
 */
@Entity
@Table(name = "mem_personal_infotmation")
public class PersonalInformation {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "portrait")
	private String portrait;
	@Column(name = "sex")
	private int sex;
	@Column(name = "start_work_date")
	private Date startWorkDate;
	@Column(name = "country")
	private String country;
	@Column(name = "province")
	private String province;
	@Column(name = "city")
	private String city;
	@Column(name = "address")
	private String address;
	@Column(name = "postcode")
	private String postcode;
	@Column(name = "phone")
	private String phone;
	@Column(name = "mobile")
	private String mobile;
	@Column(name = "self_assessment")
	@Lob
	private String selfAssessment;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalWorkType> personalWorkTypeSet = new HashSet<PersonalWorkType>();
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalDesignType> personalDesignTypeSet = new HashSet<PersonalDesignType>();
	@Column(name = "school")
	private String school;
	@Column(name = "major")
	private String major;
	@Column(name = "degree")
	private String degree;
	@Column(name = "company")
	private String company;
	@Column(name = "duty")
	private String duty;
	@Column(name = "study_experience")
	@Lob
	private String studyExperience;
	@Column(name = "work_archievement")
	@Lob
	private String workArchievement;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPortrait() {
		return portrait;
	}

	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public Date getStartWorkDate() {
		return startWorkDate;
	}

	public void setStartWorkDate(Date startWorkDate) {
		this.startWorkDate = startWorkDate;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
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

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
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

	public String getSelfAssessment() {
		return selfAssessment;
	}

	public void setSelfAssessment(String selfAssessment) {
		this.selfAssessment = selfAssessment;
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

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getStudyExperience() {
		return studyExperience;
	}

	public void setStudyExperience(String studyExperience) {
		this.studyExperience = studyExperience;
	}

	public String getWorkArchievement() {
		return workArchievement;
	}

	public void setWorkArchievement(String workArchievement) {
		this.workArchievement = workArchievement;
	}

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}
}
