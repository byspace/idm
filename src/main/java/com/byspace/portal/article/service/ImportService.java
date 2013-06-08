package com.byspace.portal.article.service;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-8
 * Time: 上午11:07
 */
public interface ImportService {

	public void importOldArticles(int topicId, String path);

	public void updateArticleContentImage(String deployName);
}
