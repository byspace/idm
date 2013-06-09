package com.byspace.portal.article.service;

import com.byspace.portal.article.entity.Article;
import com.byspace.portal.article.po.ArticleListPaginator;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 下午3:06
 */
public interface ArticleService {

	/**
	 * save article
	 * @param article
	 */
	public void saveArticle(Article article);

	/**
	 * read article by id
	 * @param articleId
	 * @return
	 */
	public Article read(int articleId);

	/**
	 * batch delete articles
	 * @param idList
	 */
	public void batchDelete(List<Integer> idList);

	/**
	 * get articles in specified topic
	 * @param topicId
	 * @param paginator
	 * @return
	 */
	public List<Article> listArticleByTopic(int topicId, ArticleListPaginator paginator);

	/**
	 * get articles in specified topic
	 * @param topic
	 * @param size
	 * @return
	 */
	public List<Article> listArticleByTopic(int topicId, int size);
}
