package com.byspace.member.service.impl;

import com.byspace.member.entity.Member;
import com.byspace.member.entity.PersonalDesign;
import com.byspace.member.service.PersonalDesignService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-17
 * Time: 上午9:59
 */
@Service("personalDesignService")
@Transactional
public class PersonalDesignServiceImpl implements PersonalDesignService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public Map<String, String> getDesignTypeList() {

		Map<String, String> types = new HashMap<String, String>();
		types.put("建筑设计", "建筑设计");
		types.put("室内设计", "室内设计");
		types.put("景观设计", "景观设计");

		return types;
	}

	@Override
	@Transactional(readOnly = true)
	public PersonalDesign readPersonalDesign(int id) {
		return em.find(PersonalDesign.class, id);
	}

	@Override
	public void savePersonalDesign(PersonalDesign personalDesign) {
		if (personalDesign.getId() == 0) {
			em.persist(personalDesign);
		} else {
			em.merge(personalDesign);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public List<PersonalDesign> getPersonalDesignList(Member member) {
		Query query = em.createQuery("from PersonalDesign pd where pd.author.id = :memberId order by pd.createDate desc");
		query.setParameter("memberId", member.getId());

		return query.getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public List<PersonalDesign> getBestWorkPersonalDesignList(Member member) {

		Query query = em.createQuery("from PersonalDesign pd where pd.author.id = :memberId and pd.bestWork='on' order by pd.createDate desc");
		query.setParameter("memberId", member.getId());
		query.setMaxResults(4);

		return query.getResultList();
	}
}
