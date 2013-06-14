package com.byspace.portal.newscenter.controller;

import com.byspace.portal.article.entity.Article;
import com.byspace.portal.panel.service.PanelService;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

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

		/*setNewsAndInfoPanel(model);
		setActivityPanel(model);
		setDesignFront(model);*/

		this.setIntervisit(model);
		this.setDesignThesis(model);

		List<Topic> topicList = topicService.getChildrenTopicByCode("TP0001");
		for (Topic topic : topicList) {
			model.addAttribute(topic.getCode() + "List", topicService.getArticleListUnderTopic(topic.getId(), 50));
		}

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

	private void setIntervisit(Model model) {
		model.addAttribute("intervisitList", topicService.getArticleListUnderTopic(59, 50));
	}

	private void setTraining(Model model) {
		model.addAttribute("trainingList", topicService.getArticleListUnderTopic(12, 50));
	}

	private void setLiveNews(Model model) {
		model.addAttribute("liveNewsList", topicService.getArticleListUnderTopic(13, 15));
	}

	private void setDesignThesis(Model model) {
		model.addAttribute("designThesisList", topicService.getArticleListUnderTopic(43, 50));
	}
}
