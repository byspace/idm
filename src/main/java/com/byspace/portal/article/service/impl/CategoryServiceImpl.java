package com.byspace.portal.article.service.impl;

import com.byspace.portal.article.entity.Category;
import com.byspace.portal.article.service.CategoryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午10:43
 */
@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void save(Category category) {
		if (category.getId() == 0) {
			em.persist(category);
		} else {
			em.merge(category);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public Category read(int categoryId) {
		return em.find(Category.class, categoryId);
	}

	@Override
	public void batchDelete(List<Integer> idList) {
		for (int id : idList) {
			Category category = em.find(Category.class, id);

			em.remove(category);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public List<Category> getAllCategories() {
		String hql = "from Category";
		return em.createQuery(hql).getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public Category findCategoryByName(String name) {
		return (Category) em.createQuery("from Category c where c.name=:categoryName").setParameter("categoryName", name).getSingleResult();
	}
}
