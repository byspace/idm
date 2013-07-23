package com.byspace.portal.article.service;

import com.byspace.portal.article.entity.Article;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-23
 * Time: 上午10:14
 */
public interface SearchService {

	public List<Article> search(String text, int page);
}
