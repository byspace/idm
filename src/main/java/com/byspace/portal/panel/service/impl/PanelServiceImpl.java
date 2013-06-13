package com.byspace.portal.panel.service.impl;

import com.byspace.portal.article.entity.Article;
import com.byspace.portal.panel.entity.Panel;
import com.byspace.portal.panel.service.PanelService;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

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
	@Autowired
	private TopicService topicService;

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

	@Override
	public void updatePanelArticles(String code) {
		updatePanelArticles(findByCode(code));
	}

	@Override
	public void updateAllPanelArticles() {
		List<Panel> panelList = em.createQuery("from Panel").getResultList();
		for (Panel panel : panelList) {
			updatePanelArticles(panel);
		}
	}

	private void updatePanelArticles(Panel panel) {
		try {
			Topic topic = panel.getPanelConfig().getTopic();
			List<Article> articleList = topicService.getArticleListUnderTopic(topic.getId(), panel.getPanelConfig().getArticleSize());

			panel.setArticleList(articleList);

			em.merge(panel);
		} catch (Exception e) {
			CustomLogger.error(e, this);
		}

	}
}
