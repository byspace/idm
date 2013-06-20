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
import java.util.*;

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

			Set<ViewItemFilter> oldViewItemFilterSet = panelInstance.getViewItemFilterList();

			updateViewItemFilterList(panelInstance, request);

			templateService.savePanelInstance(panelInstance);

			return JsonResult.saveSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.saveFail();
		}
	}

	private void updateViewItemFilterList(PanelInstance panelInstance, HttpServletRequest request) {

		Set<ViewItemFilter> viewItemFilterList = new TreeSet<ViewItemFilter>();
		JSONArray jsonArray = JSONArray.fromObject(request.getParameter("viewItems"));
		for (Object object : jsonArray) {
			JSONObject jsonObject = (JSONObject) object;
			ViewItemFilter viewItemFilter = new ViewItemFilter();
			updateViewItemFilter(viewItemFilter, jsonObject);
			viewItemFilterList.add(viewItemFilter);
		}


		/*Set<ViewItemFilter> viewItemFilterList = panelInstance.getViewItemFilterList();
		JSONArray jsonArray = JSONArray.fromObject(request.getParameter("viewItems"));
		for (Object object : jsonArray) {
			JSONObject jsonObject = (JSONObject) object;
			System.out.println(jsonObject.toString());
			if (!hasDefineViewItem(panelInstance, jsonObject)) {
				ViewItemFilter viewItemFilter = new ViewItemFilter();
				updateViewItemFilter(viewItemFilter, jsonObject);
				viewItemFilterList.add(viewItemFilter);
			} else {
				for (ViewItemFilter savedViewItemFilter : panelInstance.getViewItemFilterList()) {
					if (savedViewItemFilter.getViewItem().getId() == jsonObject.getInt("viewItemId")) {
						updateViewItemFilter(savedViewItemFilter, jsonObject);
					}
				}
			}
		}*/

		panelInstance.setViewItemFilterList(viewItemFilterList);
	}

	private boolean hasDefineViewItem(PanelInstance panelInstance, JSONObject jsonObject) {
		for (ViewItemFilter viewItemFilter : panelInstance.getViewItemFilterList()) {
			System.out.println(viewItemFilter.getViewItem().getId() + "-" + jsonObject.getInt("viewItemId"));
			if (viewItemFilter.getViewItem().getId() == jsonObject.getInt("viewItemId")) {
				return true;
			}
		}

		return false;
	}

	private void updateViewItemFilter(ViewItemFilter viewItemFilter, JSONObject jsonObject) {
		viewItemFilter.setKey(jsonObject.getString("key"));
		Topic topic = topicService.readTopic(jsonObject.getInt("topic"));
		viewItemFilter.setTopic(topic);
		viewItemFilter.setViewItem(templateService.readViewItemById(jsonObject.getInt("viewItemId")));

	}
}
