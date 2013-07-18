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

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private PersonalInformation personalInformation;

	public static PersonalMember buildFromMember(Member member) {
		PersonalMember personalMember = new PersonalMember();
		personalMember.setUserName(member.getUserName());
		personalMember.setPassword(member.getPassword());
		personalMember.setEmail(member.getEmail());

		return personalMember;
	}

	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}

	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}

}
