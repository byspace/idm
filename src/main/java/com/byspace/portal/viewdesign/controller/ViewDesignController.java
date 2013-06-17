package com.byspace.portal.viewdesign.controller;

import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-15
 * Time: 上午10:33
 */
@Controller
@RequestMapping("/portal/viewdesign")
public class ViewDesignController {

	@Autowired
	private TopicService topicService;

	@RequestMapping("index")
	public String index(Model model) {

		Topic parentTopic = topicService.readTopicByCode("TP0003");
		model.addAttribute("secondLevelTopicList", topicService.getTopicListByParentId(parentTopic.getId()));

		List<Topic> topicList = topicService.getChildrenTopicByCode("TP0003");
		for (Topic topic : topicList) {
			model.addAttribute(topic.getCode() + "List", topicService.getArticleListUnderTopic(topic.getId(), 50));
		}

		return "portal/viewdesign/index";
	}
}
