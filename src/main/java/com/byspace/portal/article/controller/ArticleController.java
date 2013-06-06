package com.byspace.portal.article.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.portal.article.entity.Article;
import com.byspace.portal.article.service.ArticleService;
import com.byspace.portal.article.service.ArticleTypeService;
import com.byspace.portal.article.service.CategoryService;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.CustomLogger;
import com.byspace.util.DateUtils;
import com.byspace.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午4:46
 */
@Controller
@RequestMapping("/portal/article")
public class ArticleController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ArticleTypeService articleTypeService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private TopicService topicService;

	@RequestMapping("index")
	public String index() {
		return "portal/article/index";
	}

	@RequestMapping("create")
	public String create(Model model) {

		this.initEditPage(model);

		return "portal/article/edit";
	}

	@RequestMapping("edit/{articleId}")
	public String edit(@PathVariable("articleId")int articleId, Model model) {

		model.addAttribute("article", articleService.read(articleId));

		this.initEditPage(model);
		return "portal/article/edit";
	}

	@RequestMapping("delete")
	@ResponseBody
	public JsonResult delete(HttpServletRequest request) {
		try {
			List<String> idStrList = Arrays.asList(request.getParameter("deleteIds").split(","));
			List<Integer> idList = StringUtils.convertStringListToIntegerList(idStrList);

			articleService.batchDelete(idList);

			return JsonResult.success("删除操作成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("删除操作失败");
		}
	}

	@RequestMapping("save")
	@ResponseBody
	public JsonResult save(HttpServletRequest request, Model model) {

		try {

			Article article = articleService.read(Integer.parseInt(request.getParameter("id")));
			if (article == null) {
				article = new Article();
			}

			article.setSubject(request.getParameter("subject"));
			article.setTopic(topicService.readTopic(Integer.parseInt(request.getParameter("topic"))));
			article.setCategory(categoryService.read(Integer.parseInt(request.getParameter("category"))));
			article.setArticleType(articleTypeService.read(Integer.parseInt(request.getParameter("articleType"))));
			article.setSource(request.getParameter("source"));
			article.setPublishDate(DateUtils.strToDate(request.getParameter("publishDate"), "MM/dd/yyyy HH:mm:ss"));
			article.setSummary(request.getParameter("summary"));
			article.setContent(request.getParameter("content"));

			articleService.saveArticle(article);

			return JsonResult.success("保存成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);

			return JsonResult.fail("保存失败");
		}
	}

	private void initEditPage(Model model) {
		model.addAttribute("categories", categoryService.getAllCategories());
		model.addAttribute("articleTypes", articleTypeService.getAllArticleTypes());
	}
}
