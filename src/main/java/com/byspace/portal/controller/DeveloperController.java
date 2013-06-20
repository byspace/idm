package com.byspace.portal.controller;

import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-20
 * Time: 下午4:43
 */
@Controller
@RequestMapping("/portal/developer")
public class DeveloperController {

	@Autowired
	private TopicService topicService;

	@RequestMapping("index")
	public String index(Model model) {

		Topic parentTopic = topicService.readTopicByCode("TP0006");
		model.addAttribute("secondLevelTopicList", topicService.getTopicListByParentId(parentTopic.getId()));

		return "portal/developer";
	}
}
