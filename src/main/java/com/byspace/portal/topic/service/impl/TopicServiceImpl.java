package com.byspace.portal.topic.service.impl;

import com.byspace.common.po.TreeData;
import com.byspace.common.po.TreePosition;
import com.byspace.common.po.TreeRelationship;
import com.byspace.common.service.TreeService;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:41
 */
@Service("topicService")
@Transactional
public class TopicServiceImpl implements TopicService {

	@PersistenceContext
	private EntityManager em;

	@Autowired
	private TreeService treeService;

	@Override
	@Transactional(readOnly = true)
	public List<TreeData> getTopicTreeDataByParentId(int parentId) {
		List<TreeData> treeDataList = new ArrayList<TreeData>();

		List<Topic> topicList = this.getTopicListByParentId(parentId);
		for (Topic topic : topicList) {
			TreeData treeData = topic.buildTreeData();
			List<TreeData> childrenTreeDataList = this.getTopicTreeDataByParentId(topic.getId());
			treeData.setChildren(childrenTreeDataList);
			treeDataList.add(treeData);
		}

		return treeDataList;
	}

	@Override
	@Transactional(readOnly = true)
	public List<TreeData> getTopicTreeDataWithRoot() {
		List<TreeData> treeDataList = new ArrayList<TreeData>();

		TreeData treeData = new TreeData();
		treeData.setId(0);
		treeData.setText("根目录");
		treeData.setIconCls("");
		treeData.setChildren(this.getTopicTreeDataByParentId(0));

		treeDataList.add(treeData);

		return treeDataList;
	}

	@Override
	@Transactional(readOnly = true)
	public List<Topic> getTopicListByParentId(int parentId) {
		String hql = "from Topic t where t.parentTopicId = :parentId order by t.treeOrder asc";
		Query query = em.createQuery(hql);
		query.setParameter("parentId", parentId);

		return query.getResultList();
	}

	@Override
	@Transactional(readOnly = true)
	public Topic readTopic(int topicId) {
		return em.find(Topic.class, topicId);
	}

	@Override
	public void saveTopic(Topic topic) {
		if (topic.getId() == 0) {
			em.persist(topic);
		} else {
			em.merge(topic);
		}
	}

	@Override
	@Transactional(readOnly = true)
	public double getMaxChildTreeOrder(int parentTopicId) {
		String hql = "from Topic t where t.parentTopicId = :parentId order by t.treeOrder desc";
		Query query = em.createQuery(hql);
		query.setParameter("parentId", parentTopicId);

		List<Topic> topicList = query.getResultList();

		if (topicList.size() == 0) {
			return 0d;
		} else {
			return topicList.get(0).getTreeOrder();
		}
	}

	@Override
	public void deleteTopic(int topicId) {
		Topic topic = this.readTopic(topicId);

		List<Topic> topicList = this.getTopicListByParentId(topicId);
		for (Topic childTopic : topicList) {
			deleteTopic(childTopic.getId());
		}

		em.remove(topic);
	}

	@Override
	public void moveTopic(int sourceId, int targetId, String point) {
		Topic topic = this.readTopic(sourceId);
		Topic targetTopic = this.readTopic(targetId);

		List brothers = this.getTopicListByParentId(targetTopic.getParentTopicId());
		List children = this.getTopicListByParentId(targetId);

		TreeRelationship treeRelationship = new TreeRelationship();
		treeRelationship.setParentNode(this.readTopic(targetTopic.getParentTopicId()));
		treeRelationship.setBrothers(brothers);
		treeRelationship.setChildren(children);

		TreePosition treePosition = treeService.getPositionAfterDrag(topic, targetTopic, point, treeRelationship);
		topic.setParentTopicId(treePosition.getParentNodeId());
		topic.setTreeOrder(treePosition.getTreeOrder());

		em.merge(topic);
	}
}
