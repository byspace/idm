package com.byspace.portal.controller;

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

		return "portal/newscenter";
	}

}
