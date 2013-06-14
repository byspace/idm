package com.byspace.portal.buildingdesign.controller;

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

		model.addAttribute("secondLevelTopicList", topicService.getTopicListByParentId(2));

		List<Topic> topicList = topicService.getChildrenTopicByCode("TP0002");
		for (Topic topic : topicList) {
			model.addAttribute(topic.getCode() + "List", topicService.getArticleListUnderTopic(topic.getId(), 50));
		}

		setPhotos(model);
		setThesis(model);

		return "portal/buildingdesign/index";
	}

	private void setPhotos(Model model) {
		model.addAttribute("photoList", topicService.getArticleListUnderTopic(44, 20));
	}

	private void setThesis(Model model) {
		model.addAttribute("thesisList", topicService.getArticleListUnderTopic(43, 15));
	}
}
