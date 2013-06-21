package com.byspace.member.entity;

import javax.persistence.*;
import java.util.Set;
import java.util.TreeSet;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午5:29
 */
@Entity
@Table(name = "mem_enterprise_member")
public class EnterpriseMember extends Member {

	@Column(name = "logo")
	private String logo;
	@ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private EnterpriseType enterpriseType;
	@Column(name = "main_page")
	private String mainPage;
	@Column(name = "detail")
	private String detail;
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<EnterpriseContact> enterpriseContactSet = new TreeSet<EnterpriseContact>();

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public EnterpriseType getEnterpriseType() {
		return enterpriseType;
	}

	public void setEnterpriseType(EnterpriseType enterpriseType) {
		this.enterpriseType = enterpriseType;
	}

	public String getMainPage() {
		return mainPage;
	}

	public void setMainPage(String mainPage) {
		this.mainPage = mainPage;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Set<EnterpriseContact> getEnterpriseContactSet() {
		return enterpriseContactSet;
	}

	public void setEnterpriseContactSet(Set<EnterpriseContact> enterpriseContactSet) {
		this.enterpriseContactSet = enterpriseContactSet;
	}
}
