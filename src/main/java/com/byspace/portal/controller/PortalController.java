package com.byspace.portal.controller;

import com.byspace.portal.article.service.ArticleService;
import com.byspace.portal.panel.service.PanelService;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:09
 */
@Controller
@RequestMapping("portal")
public class PortalController {

	@Autowired
	private PanelService panelService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private TopicService topicService;

	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("bannerPanel", panelService.findByCode("MP0001"));
		setNewsPanel(model);
		setDevelopPanel(model);
		setArchtectPanel(model);
		setViewPanel(model);
		setRoomPanel(model);
		setPhotoPanel(model);
		setEffectPanel(model);
		setDeveloperPanel(model);
		return "portal/index";
	}

	private void setNewsPanel(Model model) {

		int size = 14;

		model.addAttribute("newListTab1", articleService.listArticleByTopic(15, size));
		model.addAttribute("newListTab2", articleService.listArticleByTopic(13, size));
		model.addAttribute("newListTab3", articleService.listArticleByTopic(10, size));
		//model.addAttribute("newListTab4", articleService.listArticleByTopic(15, size));
	}

	private void setDevelopPanel(Model model) {
		model.addAttribute("developPanel", panelService.findByCode("MP0004"));
	}

	private void setArchtectPanel(Model model) {
		model.addAttribute("archtectPanel", panelService.findByCode("MP0005"));
		model.addAttribute("archtectChildrenTopic", topicService.getTopicListByParentId(2));
	}

	private void setViewPanel(Model model) {
		model.addAttribute("viewPanel", panelService.findByCode("MP0006"));
		model.addAttribute("viewChildrenTopic", topicService.getTopicListByParentId(3));

		model.addAttribute("archtectTab", topicService.getArticleListUnderTopic(2, 10));
		model.addAttribute("viewTab", topicService.getArticleListUnderTopic(3, 10));
		model.addAttribute("roomTab", topicService.getArticleListUnderTopic(4, 10));
	}

	private void setRoomPanel(Model model) {
		model.addAttribute("roomArticles", topicService.getArticleListUnderTopic(4, 8));
		model.addAttribute("roomChildrenTopic", topicService.getTopicListByParentId(4));

		model.addAttribute("developArticles", topicService.getArticleListUnderTopic(6, 10));
	}

	private void setPhotoPanel(Model model) {
		model.addAttribute("photoArticles", topicService.getArticleListUnderTopic(44, 12));
	}

	private void setEffectPanel(Model model) {
		model.addAttribute("effectArticles", topicService.getArticleListUnderTopic(5, 12));
	}

	private void setDeveloperPanel(Model model) {
		model.addAttribute("developerArticles", topicService.getArticleListUnderTopic(6, 15));
	}
}
