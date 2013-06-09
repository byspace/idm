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
		model.addAttribute("childrenTopic", topicService.getTopicListByParentId(2));
	}

	private void setViewPanel(Model model) {
		model.addAttribute("viewPanel", panelService.findByCode("MP0006"));
		model.addAttribute("childrenTopic", topicService.getTopicListByParentId(3));
	}
}
