package com.byspace.portal.topic.service;

import com.byspace.common.po.TreeData;
import com.byspace.portal.topic.entity.Topic;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:40
 */
public interface TopicService {

	/**
	 * get tree data by parent node id
	 * @param parentId
	 * @return
	 */
	public List<TreeData> getTopicTreeDataByParentId(int parentId);

	/**
	 *
	 * @return
	 */
	public List<TreeData> getTopicTreeDataWithRoot();

	/**
	 *
	 * @param parentId
	 * @return
	 */
	public List<Topic> getTopicListByParentId(int parentId);

	/**
	 * read topic by id
	 * @param topicId
	 * @return
	 */
	public Topic readTopic(int topicId);

	/**
	 * save topic
	 * @param topic
	 */
	public void saveTopic(Topic topic);

	/**
	 * get max tree order under spicified topic
	 * @param parentTopicId
	 * @return
	 */
	public double getMaxChildTreeOrder(int parentTopicId);

	/**
	 * delete topic and children topics
	 * @param topicId
	 */
	public void deleteTopic(int topicId);

	/**
	 * move topic
	 * @param sourceId
	 * @param targetId
	 * @param point
	 */
	public void moveTopic(int sourceId, int targetId, String point);

	/**
	 * get topic tree list from root to current topic
	 * @param topic
	 * @return
	 */
	public List<Topic> getTopicTree(Topic topic);

}
