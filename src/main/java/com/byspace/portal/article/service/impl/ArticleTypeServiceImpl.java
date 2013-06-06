package com.byspace.portal.article.service.impl;

import com.byspace.portal.article.entity.ArticleType;
import com.byspace.portal.article.service.ArticleTypeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 下午2:48
 */
@Service("articleTypeService")
@Transactional
public class ArticleTypeServiceImpl implements ArticleTypeService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public List<ArticleType> getAllArticleTypes() {
		return em.createQuery("from ArticleType").getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public ArticleType read(int articleTypeId) {
		return em.find(ArticleType.class, articleTypeId);
	}
}
