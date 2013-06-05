package com.byspace.portal.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午4:46
 */
@Controller
@RequestMapping("/portal/article")
public class ArticleController {

	@RequestMapping("create")
	public String create() {
		return "portal/article/edit";
	}

	@RequestMapping("edit/{articleId}")
	public String edit(@PathVariable("articleId")int articleId) {
		return "portal/article/edit";
	}
}
