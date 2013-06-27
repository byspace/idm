package com.byspace.member.service.impl;

import com.byspace.member.entity.*;
import com.byspace.member.service.MemberService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-24
 * Time: 上午10:33
 */
@Service("memberService")
@Transactional
public class MemberServiceImpl implements MemberService {

	@PersistenceContext
	private EntityManager em;

	public static final String MEMBER_CURRENT_MEMBER_KEY = "member_current_member";

	@Override
	public void saveMember(Member member) {
		if (member.getId() == 0) {
			em.persist(member);
		} else {
			em.merge(member);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public PersonalMember readPersonalMember(int id) {
		return em.find(PersonalMember.class, id);
	}

	@Override
	@Transactional(readOnly = true)
	public EnterpriseMember readEnterpriseMember(int id) {
		return em.find(EnterpriseMember.class, id);
	}

	@Override
	@Transactional(readOnly = true)
	public List<PersonalWorkType> getPersonalWorkTypeList() {
		return em.createQuery("from PersonalWorkType").getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public List<PersonalDesignType> getPersonalDesignTypeList() {
		return em.createQuery("from PersonalDesignType").getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public List<EnterpriseType> getEnterpriseTypeList() {
		return em.createQuery("from EnterpriseType").getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public PersonalWorkType getPersonalWorkTypeById(int id) {
		return em.find(PersonalWorkType.class, id);
	}

	@Override
	@Transactional(readOnly = true)
	public PersonalDesignType getPersonalDesignTypeById(int id) {
		return em.find(PersonalDesignType.class, id);
	}

	@Override
	@Transactional(readOnly = true)
	public EnterpriseType getEnterPriseTypeById(int id) {
		return em.find(EnterpriseType.class, id);
	}

	@Override
	@Transactional(readOnly = true)
	public boolean userNameExist(String username) {
		String hql = "from Member m where m.userName = :username";
		Query query = em.createQuery(hql);
		query.setParameter("username", username);
		List<Member> memberList = query.getResultList();

		return memberList.size() > 0;
	}

	@Override
	@Transactional(readOnly = true)
	public Member readMemberByUsername(String username) {
		String hql = "from Member m where m.userName = :username";
		Query query = em.createQuery(hql);
		query.setParameter("username", username);
		List<Member> memberList = query.getResultList();

		if (memberList.size() > 0) {
			return memberList.get(0);
		} else {
			return null;
		}
	}

	@Override
	@Transactional(readOnly = true)
	public Member getCurrentMember(HttpServletRequest request) {
		if (request.getSession().getAttribute(MEMBER_CURRENT_MEMBER_KEY) == null) {
			return null;
		}

		return (Member)request.getSession().getAttribute(MEMBER_CURRENT_MEMBER_KEY);
	}

	@Override
	@Transactional(readOnly = true)
	public void setCurrentMember(HttpServletRequest request, Member member) {
		request.getSession().setAttribute(MEMBER_CURRENT_MEMBER_KEY, member);
	}

	@Override
	@Transactional(readOnly = true)
	public void removeCurrentUser(HttpServletRequest request) {
		request.getSession().removeAttribute(MEMBER_CURRENT_MEMBER_KEY);
	}
}
