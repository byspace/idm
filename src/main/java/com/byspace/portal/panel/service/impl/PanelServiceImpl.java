package com.byspace.portal.panel.service.impl;

import com.byspace.portal.panel.entity.Panel;
import com.byspace.portal.panel.service.PanelService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-9
 * Time: 上午10:47
 */
@Service("panelService")
@Transactional
public class PanelServiceImpl implements PanelService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public Panel read(int panelId) {
		return em.find(Panel.class, panelId);
	}

	@Override
	@Transactional(readOnly = true)
	public Panel findByCode(String code) {
		String hql = "from Panel p where p.code=:code";
		Query query = em.createQuery(hql);
		query.setParameter("code", code);
		return (Panel) query.getSingleResult();
	}
}
