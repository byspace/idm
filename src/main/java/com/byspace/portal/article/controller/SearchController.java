package com.byspace.portal.article.controller;

import com.byspace.portal.article.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-23
 * Time: 上午10:11
 */
@Controller
@RequestMapping("/portal/search")
public class SearchController {

	@Autowired
	private SearchService searchService;

	@RequestMapping("index/{text}/{page}")
	public String index(@PathVariable("text")String text, @PathVariable("page")int page, Model model) {

		model.addAttribute("currentPage", page);
		model.addAttribute("text", text);
		model.addAttribute("articleList", searchService.search(text, page));

		return "portal/search";
	}
}
