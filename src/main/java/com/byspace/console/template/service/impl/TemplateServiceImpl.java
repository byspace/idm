package com.byspace.console.template.service.impl;

import com.byspace.console.template.entity.PanelInstance;
import com.byspace.console.template.entity.PanelTemplate;
import com.byspace.console.template.entity.ViewItem;
import com.byspace.console.template.service.TemplateService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午11:01
 */
@Service("templateService")
@Transactional
public class TemplateServiceImpl implements TemplateService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public PanelInstance readPanelInstanceByCode(String code) {
		Query query = em.createQuery("from PanelInstance pi where pi.code = :code");
		query.setParameter("code", code);

		return (PanelInstance) query.getSingleResult();
	}

	@Override
	@Transactional(readOnly = true)
	public ViewItem readViewItemByCode(String code) {
		Query query = em.createQuery("from ViewItem vi where vi.code = :code");
		query.setParameter("code", code);
		return (ViewItem) query.getSingleResult();
	}

	@Override
	@Transactional(readOnly = true)
	public ViewItem readViewItemById(int id) {
		return em.find(ViewItem.class, id);
	}

	@Override
	@Transactional(readOnly = true)
	public PanelTemplate readPanelTemplateById(int id) {
		return em.find(PanelTemplate.class, id);
	}

	@Override
	public void savePanelTemplate(PanelTemplate panelTemplate) {
		if (panelTemplate.getId() == 0) {
			em.persist(panelTemplate);
		} else {
			em.merge(panelTemplate);
		}
	}

	@Override
	public void batchDeletePanelTemplate(List<Integer> idList) {
		for (int id : idList) {
			em.remove(em.find(PanelTemplate.class, id));
		}
	}
}
