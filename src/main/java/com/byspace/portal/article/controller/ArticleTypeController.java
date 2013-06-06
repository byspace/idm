package com.byspace.portal.article.controller;

import com.byspace.portal.article.entity.ArticleType;
import com.byspace.portal.article.service.ArticleTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 下午2:45
 */
@Controller
@RequestMapping("/portal/articleType")
public class ArticleTypeController {

	@Autowired
	private ArticleTypeService articleTypeService;

	@RequestMapping("getList")
	@ResponseBody
	public List<ArticleType> getList() {
		return articleTypeService.getAllArticleTypes();
	}
}
