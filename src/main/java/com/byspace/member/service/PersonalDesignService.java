package com.byspace.member.service;

import com.byspace.member.entity.Member;
import com.byspace.member.entity.PersonalDesign;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-17
 * Time: 上午9:58
 */
public interface PersonalDesignService {

	public Map<String, String> getDesignTypeList();

	public PersonalDesign readPersonalDesign(int id);

	public void savePersonalDesign(PersonalDesign personalDesign);

	public List<PersonalDesign> getPersonalDesignList(Member member);

	public List<PersonalDesign> getBestWorkPersonalDesignList(Member member);
}
