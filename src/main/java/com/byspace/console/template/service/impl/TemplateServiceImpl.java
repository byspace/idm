package com.byspace.console.template.service.impl;

import com.byspace.console.template.entity.PanelInstance;
import com.byspace.console.template.entity.PanelTemplate;
import com.byspace.console.template.entity.ViewItem;
import com.byspace.console.template.entity.ViewItemFilter;
import com.byspace.console.template.service.TemplateService;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
	@Autowired
	private TopicService topicService;

	@Override
	@Transactional(readOnly = true)
	public PanelInstance readPanelInstanceByCode(String code) {
		Query query = em.createQuery("from PanelInstance pi where pi.code = :code");
		query.setParameter("code", code);

		PanelInstance panelInstance = (PanelInstance) query.getSingleResult();

		return panelInstance;
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
	@Transactional(readOnly = true)
	public List<PanelTemplate> readPanelTemplateList() {
		return em.createQuery("from PanelTemplate").getResultList();
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

	@Override
	@Transactional(readOnly = true)
	public PanelInstance readPanelInstanceById(int id) {
		PanelInstance panelInstance = em.find(PanelInstance.class, id);
		return panelInstance;
	}

	@Override
	public void savePanelInstance(PanelInstance panelInstance) {
		if (panelInstance.getId() == 0) {
			em.persist(panelInstance);
		} else {
			em.merge(panelInstance);
		}
	}

	@Override
	public void batchDeletePanelInstance(List<Integer> idList) {
		for (int id : idList) {
			em.remove(em.find(PanelInstance.class, id));
		}
	}

}
