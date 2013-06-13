package com.byspace.portal.newscenter.controller;

import com.byspace.portal.panel.service.PanelService;
import com.byspace.portal.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-13
 * Time: 下午2:53
 */
@Controller
@RequestMapping("/portal/newscenter")
public class NewsCenterController {

	@Autowired
	private TopicService topicService;
	@Autowired
	private PanelService panelService;

	@RequestMapping("index")
	public String index(Model model) {

		model.addAttribute("secondLevelTopicList", topicService.getTopicListByParentId(1));

		setNewsAndInfoPanel(model);
		setActivityPanel(model);
		setDesignFront(model);

		return "portal/newscenter/index";
	}

	private void setNewsAndInfoPanel(Model model) {

		model.addAttribute("newsAndInfoPicturePanel", panelService.findByCode("NC0001"));
		model.addAttribute("newsAndInfoArticles", topicService.getArticleListUnderTopic(9, 13));
	}

	private void setActivityPanel(Model model) {
		model.addAttribute("activityList", topicService.getArticleListUnderTopic(10, 11));
	}

	private void setDesignFront(Model model) {
		model.addAttribute("designFrontList", topicService.getArticleListUnderTopic(11, 20));
	}
}
