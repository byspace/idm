package com.byspace.portal.topic.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.common.po.TreeData;
import com.byspace.portal.article.entity.Article;
import com.byspace.portal.article.po.ArticleListPaginator;
import com.byspace.portal.article.service.ArticleService;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:02
 */
@Controller
@RequestMapping("/portal/topic")
public class TopicController {

	@Autowired
	private TopicService topicService;
	@Autowired
	private ArticleService articleService;

	private static final int ARTICLE_NUM_PER_PAGE = 20;

	@RequestMapping("index")
	public String index() {
		return "portal/topic/index";
	}

	@RequestMapping("getTopicTreeDataByParentId/{parentTopicId}")
	@ResponseBody
	public List<TreeData> getTopicTreeDataByParentId(@PathVariable("parentTopicId")int parentTopicId) {
		return topicService.getTopicTreeDataByParentId(parentTopicId);
	}

	@RequestMapping("getTopicTreeDataWithRoot")
	@ResponseBody
	public List<TreeData> getTopicTreeDataWithRoot() {
		return topicService.getTopicTreeDataWithRoot();
	}

	@RequestMapping("save")
	@ResponseBody
	public JsonResult save(HttpServletRequest request) {
		try {
			Topic topic = topicService.readTopic(Integer.parseInt(request.getParameter("id")));
			int parentTopicId = Integer.parseInt(request.getParameter("parentTopicId"));
			if (topic == null) {
				topic = new Topic();
				topic.setTreeOrder(topicService.getMaxChildTreeOrder(parentTopicId) + 1d);
			}

			topic.setName(request.getParameter("name"));
			topic.setDetail(request.getParameter("detail"));
			topic.setParentTopicId(Integer.parseInt(request.getParameter("parentTopicId")));

			topicService.saveTopic(topic);
			return JsonResult.success("保存成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("保存失败");
		}
	}

	@RequestMapping("read/{topicId}")
	@ResponseBody
	public Topic read(@PathVariable("topicId")int topicId) {
		return topicService.readTopic(topicId);
	}

	@RequestMapping("delete/{topicId}")
	@ResponseBody
	public JsonResult delete(@PathVariable("topicId")int topicId) {
		try {
			topicService.deleteTopic(topicId);
			return JsonResult.success("删除成功");
		} catch (Exception e) {
			return JsonResult.fail("删除失败");
		}
	}

	@RequestMapping("move/{sourceId}/{targetId}/{point}")
	@ResponseBody
	public JsonResult move(@PathVariable("sourceId")int sourceId, @PathVariable("targetId")int targetId, @PathVariable("point")String point) {
		try {

			topicService.moveTopic(sourceId, targetId, point);

			return JsonResult.success("操作成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("操作失败");
		}
	}

	@RequestMapping("listArticle/{topicId}")
	public String listArticle(@PathVariable("topicId")int topicId, Model model) {
		return this.listArticle(topicId, 1, model);
	}

	@RequestMapping("listArticle/{topicId}/{pageNum}")
	public String listArticle(@PathVariable("topicId")int topicId, @PathVariable("pageNum")int pageNum, Model model) {

		ArticleListPaginator paginator = new ArticleListPaginator();
		paginator.setPageNum(pageNum);
		paginator.setLimit(ARTICLE_NUM_PER_PAGE);

		List<Article> articleList = articleService.listArticleByTopic(topicId, paginator);
		Topic topic = topicService.readTopic(topicId);
		List<Topic> topicList = topicService.getTopicTree(topic);
		model.addAttribute("topicList", topicList);
		if (topicList.size() > 0) {
			model.addAttribute("firstLevelTopic", topicList.get(0));
			model.addAttribute("secondLevelTopicList", topicService.getTopicListByParentId(topicList.get(0).getId()));
		}

		model.addAttribute("articleList", articleList);
		model.addAttribute("topic", topic);
		model.addAttribute("paginator", paginator);
		return "portal/topic/listArticle";
	}
}
