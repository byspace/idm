package com.byspace.portal.article.service.impl;

import com.byspace.portal.article.entity.Article;
import com.byspace.portal.article.po.ArticleListPaginator;
import com.byspace.portal.article.service.ArticleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 下午3:07
 */
@Service("articleService")
@Transactional
public class ArticleServiceImpl implements ArticleService {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void saveArticle(Article article) {
		if (article.getId() == 0) {
			em.persist(article);
		} else {
			em.merge(article);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public Article read(int articleId) {
		return em.find(Article.class, articleId);
	}

	@Override
	public void batchDelete(List<Integer> idList) {
		for (int id : idList) {
			Article article = em.find(Article.class, id);
			em.remove(article);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public List<Article> listArticleByTopic(int topicId, ArticleListPaginator paginator) {

		String countHql = "select count(a.id) as cnt from Article a where a.topic.id=:topicId";
		Query countQuery = em.createQuery(countHql);
		countQuery.setParameter("topicId", topicId);

		long total = (Long)countQuery.getSingleResult();
		paginator.setTotal(total);
		paginator.calculateTotalPage();

		int startFrom = (paginator.getPageNum() - 1) * paginator.getLimit();
		String hql = "from Article a where a.topic.id=:topicId order by a.publishDate desc";
		Query query = em.createQuery(hql);
		query.setParameter("topicId", topicId);
		query.setMaxResults(paginator.getLimit());
		query.setFirstResult(startFrom);

		return query.getResultList();
	}
}
