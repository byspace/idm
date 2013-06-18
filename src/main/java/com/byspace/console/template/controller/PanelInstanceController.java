package com.byspace.console.template.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.console.template.entity.PanelInstance;
import com.byspace.console.template.entity.ViewItem;
import com.byspace.console.template.entity.ViewItemFilter;
import com.byspace.console.template.service.TemplateService;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.CustomLogger;
import com.byspace.util.StringUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-18
 * Time: 上午9:28
 */
@Controller
@RequestMapping("/console/template/panelInstance")
public class PanelInstanceController {

	@Autowired
	private TemplateService templateService;
	@Autowired
	private TopicService topicService;

	@RequestMapping("index")
	public String index() {
		return "console/template/panelinstance/index";
	}

	@RequestMapping("create")
	public String create(Model model) {

		model.addAttribute("panelTemplateList", templateService.readPanelTemplateList());

		return "console/template/panelinstance/edit";
	}

	@RequestMapping("edit/{id}")
	public String edit(@PathVariable("id")int id, Model model) {

		model.addAttribute("panelInstance", templateService.readPanelInstanceById(id));
		model.addAttribute("panelTemplateList", templateService.readPanelTemplateList());

		return "console/template/panelinstance/edit";
	}

	@RequestMapping("delete")
	@ResponseBody
	public JsonResult delete(HttpServletRequest request) {
		try {
			List<String> idStrList = Arrays.asList(request.getParameter("deleteIds").split(","));
			List<Integer> idList = StringUtils.convertStringListToIntegerList(idStrList);

			templateService.batchDeletePanelInstance(idList);

			return JsonResult.deleteSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.deleteFail();
		}
	}

	@RequestMapping("save")
	@ResponseBody
	public JsonResult save(HttpServletRequest request) {
		try {

			int id = Integer.parseInt(request.getParameter("id"));
			PanelInstance panelInstance = templateService.readPanelInstanceById(id);
			if (panelInstance == null) {
				panelInstance = new PanelInstance();
			}

			panelInstance.setCode(request.getParameter("code"));
			panelInstance.setTitle(request.getParameter("title"));
			panelInstance.setMoreLink(request.getParameter("moreLink"));
			panelInstance.setPanelTemplate(templateService.readPanelTemplateById(Integer.parseInt(request.getParameter("templateId"))));
			panelInstance.setDetail(request.getParameter("detail"));

			updateViewItemFilterList(panelInstance, request);

			templateService.savePanelInstance(panelInstance);

			return JsonResult.saveSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.saveFail();
		}
	}

	private void updateViewItemFilterList(PanelInstance panelInstance, HttpServletRequest request) {
		List<ViewItemFilter> viewItemFilterList = panelInstance.getViewItemFilterList();
		JSONArray jsonArray = JSONArray.fromObject(request.getParameter("viewItems"));
		for (Object object : jsonArray) {
			JSONObject jsonObject = (JSONObject) object;

			if (!jsonObject.containsKey("id")) {
				ViewItemFilter viewItemFilter = new ViewItemFilter();
				updateViewItemFilter(viewItemFilter, jsonObject);
				viewItemFilterList.add(viewItemFilter);
			} else {
				for (ViewItemFilter savedViewItemFilter : panelInstance.getViewItemFilterList()) {
					if (savedViewItemFilter.getId() == jsonObject.getInt("id")) {
						updateViewItemFilter(savedViewItemFilter, jsonObject);
					}
				}
			}
		}

		panelInstance.setViewItemFilterList(viewItemFilterList);
	}

	private void updateViewItemFilter(ViewItemFilter viewItemFilter, JSONObject jsonObject) {
		viewItemFilter.setKey(jsonObject.getString("key"));
		Topic topic = topicService.readTopic(jsonObject.getInt("topic"));
		viewItemFilter.setTopic(topic);
		viewItemFilter.setViewItem(templateService.readViewItemById(jsonObject.getInt("viewItemId")));

	}
}
