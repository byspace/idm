package com.byspace.portal.article.service;

import com.byspace.portal.article.entity.Category;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午10:41
 */
public interface CategoryService {

	/**
	 * save category
	 * @param category
	 */
	public void save(Category category);

	/**
	 * read category by id
	 * @param categoryId
	 * @return
	 */
	public Category read(int categoryId);

	/**
	 * batch delete categories by ids
	 * @param idList
	 */
	public void batchDelete(List<Integer> idList);

	/**
	 * get all categories
	 * @return
	 */
	public List<Category> getAllCategories();
}
