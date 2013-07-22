package com.byspace.member.service.impl;

import com.byspace.member.entity.Member;
import com.byspace.member.entity.PersonalPost;
import com.byspace.member.service.PersonalPostService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-18
 * Time: 下午3:56
 */
@Service("personalPostService")
@Transactional
public class PersonalPostServiceImpl implements PersonalPostService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public List<PersonalPost> getPersonalPostList(Member member) {

		Query query = em.createQuery("from PersonalPost pp where pp.author.id=:memberId order by pp.createDate desc");
		query.setParameter("memberId", member.getId());

		return query.getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public PersonalPost readPersonalPost(int id) {
		return em.find(PersonalPost.class, id);
	}

	@Override
	public void savePersonalPost(PersonalPost personalPost) {
		if (personalPost.getId() == 0) {
			em.persist(personalPost);
		} else {
			em.merge(personalPost);
		}
	}
}
