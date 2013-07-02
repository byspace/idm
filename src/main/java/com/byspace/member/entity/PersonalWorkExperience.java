package com.byspace.member.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-1
 * Time: 下午3:41
 */
@Entity
@Table(name = "mem_personal_work_expression")
public class PersonalWorkExperience {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "company_name")
	private String companyName;
	@Column(name = "department")
	private String department;
	@Column(name = "company_type")
	private String companyType;
	@Column(name = "company_size")
	private String companySize;
	@Column(name = "position")
	private String position;
	@Column(name = "start_date")
	private Date startDate;
	@Column(name = "end_date")
	private Date endDate;
	@Column(name = "description")
	@Lob
	private String description;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
