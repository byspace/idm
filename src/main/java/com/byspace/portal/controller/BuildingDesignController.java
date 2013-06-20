package com.byspace.portal.controller;

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
 * Date: 13-6-14
 * Time: 下午2:29
 */
@Controller
@RequestMapping("/portal/buildingdesign")
public class BuildingDesignController {

	@Autowired
	private TopicService topicService;

	@RequestMapping("index")
	public String index(Model model) {

		Topic parentTopic = topicService.readTopicByCode("TP0002");
		model.addAttribute("secondLevelTopicList", topicService.getTopicListByParentId(parentTopic.getId()));

		return "portal/buildingdesign";
	}
}
