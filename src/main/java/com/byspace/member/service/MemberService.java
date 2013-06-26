package com.byspace.member.service;

import com.byspace.member.entity.*;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-24
 * Time: 上午10:26
 */
public interface MemberService {

	/**
	 * 保存用户
	 * @param member
	 */
	public void saveMember(Member member);

	/**
	 * 读取个人用户
	 * @param id
	 * @return
	 */
	public PersonalMember readPersonalMember(int id);

	/**
	 * 读取企业用户
	 * @param id
	 * @return
	 */
	public EnterpriseMember readEnterpriseMember(int id);

	/**
	 * 获取个人业务类型列表
	 * @return
	 */
	public List<PersonalWorkType> getPersonalWorkTypeList();


	/**
	 * 获取个人设计类型列表
	 * @return
	 */
	public List<PersonalDesignType> getPersonalDesignTypeList();

	/**
	 * 获取公司类型列表
	 * @return
	 */
	public List<EnterpriseType> getEnterpriseTypeList();

	/**
	 * 根据id获取个人业务类型
	 * @param id
	 * @return
	 */
	public PersonalWorkType getPersonalWorkTypeById(int id);

	/**
	 * 根据id获取个人擅长设计类型
	 * @param id
	 * @return
	 */
	public PersonalDesignType getPersonalDesignTypeById(int id);

	/**
	 * 根据id获取企业类型
	 * @param id
	 * @return
	 */
	public EnterpriseType getEnterPriseTypeById(int id);

	/**
	 * 判断用户名是否存在
	 * @param username
	 * @return
	 */
	public boolean userNameExist(String username);
}
