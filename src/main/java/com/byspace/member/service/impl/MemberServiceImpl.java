package com.byspace.member.service.impl;

import com.byspace.member.entity.*;
import com.byspace.member.service.MemberService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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
}
