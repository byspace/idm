package com.byspace.portal.article.service.impl;

import com.byspace.portal.article.entity.Article;
import com.byspace.portal.article.service.SearchService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-23
 * Time: 上午10:15
 */
@Service("searchService")
@Transactional
public class SearchServiceImpl implements SearchService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public List<Article> search(String text, int page) {

		Query query = em.createQuery("from Article a where a.subject like :text order by a.publishDate desc");
		query.setParameter("text", "%" + text + "%");
		query.setMaxResults(20);
		query.setFirstResult((page - 1) * 20);
	 	return query.getResultList();
	}
}
