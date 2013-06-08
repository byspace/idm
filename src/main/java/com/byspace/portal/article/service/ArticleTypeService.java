package com.byspace.portal.article.service;

import com.byspace.portal.article.entity.ArticleType;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 下午2:46
 */
public interface ArticleTypeService {

	/**
	 * get all article types
	 * @return
	 */
	public List<ArticleType> getAllArticleTypes();

	/**
	 * get article type by id
	 * @param articleTypeId
	 * @return
	 */
	public ArticleType read(int articleTypeId);

	/**
	 * fine article type by name
	 * @param name
	 * @return
	 */
	public ArticleType fileByName(String name);
}
