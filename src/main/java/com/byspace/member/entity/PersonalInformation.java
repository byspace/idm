package com.byspace.member.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-29
 * Time: 上午10:35
 */
public class PersonalInformation {

	private int id;
	private String name;
	private int sex;
	private Date startWorkDate;
	private String country;
	private String province;
	private String city;
	private String address;
	private String postcode;
	@Column(name = "phone")
	private String phone;
	@Column(name = "mobile")
	private String mobile;
	private String selfAssessment;
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalWorkType> personalWorkTypeSet = new HashSet<PersonalWorkType>();
	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Set<PersonalDesignType> personalDesignTypeSet = new HashSet<PersonalDesignType>();
	private String school;
	private String major;
	private String degree;
	private String company;
	private String studyExperience;
	private String workExperience;
	private Set<PersonalWorkExperience> personalWorkExperienceSet = new HashSet<PersonalWorkExperience>();

}
