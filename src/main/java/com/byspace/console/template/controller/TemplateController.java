package com.byspace.console.template.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.console.template.entity.PanelTemplate;
import com.byspace.console.template.entity.ViewItem;
import com.byspace.console.template.service.TemplateService;
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
 * Date: 13-6-17
 * Time: 上午11:41
 */
@Controller
@RequestMapping("/console/template")
public class TemplateController {

	@Autowired
	private TemplateService templateService;

	@RequestMapping("index")
	public String index() {
		return "console/template/index";
	}

	@RequestMapping("create")
	public String create() {
		return "console/template/edit";
	}

	@RequestMapping("edit/{id}")
	public String edit(@PathVariable("id")int id, Model model) {

		model.addAttribute("panelTemplate", templateService.readPanelTemplateById(id));
		return "console/template/edit";
	}

	@RequestMapping("save")
	@ResponseBody
	public JsonResult save(HttpServletRequest request) {
		try {

			int id = Integer.parseInt(request.getParameter("id"));
			PanelTemplate panelTemplate = templateService.readPanelTemplateById(id);
			if (panelTemplate == null) {
				panelTemplate = new PanelTemplate();
			}

			panelTemplate.setName(request.getParameter("name"));
			panelTemplate.setCode(request.getParameter("code"));
			panelTemplate.setType(request.getParameter("type"));
			panelTemplate.setDetail(request.getParameter("detail"));

			Set<ViewItem> viewItemList = new TreeSet<ViewItem>();

			JSONArray jsonArray = JSONArray.fromObject(request.getParameter("viewItems"));
			int i = 0;
			for (Object object : jsonArray) {
				JSONObject jsonObject = (JSONObject) object;
				ViewItem viewItem = new ViewItem();
				viewItem.setCode(jsonObject.getString("code"));
				viewItem.setType(jsonObject.getString("type"));
				viewItem.setDetail(jsonObject.getString("detail"));
				viewItem.setSize(jsonObject.getInt("size"));
				viewItem.setOrder(i);

				viewItemList.add(viewItem);
				i++;
			}

			panelTemplate.setViewItemList(viewItemList);

			templateService.savePanelTemplate(panelTemplate);

			return JsonResult.saveSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.saveFail();
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public JsonResult delete(HttpServletRequest request) {
		try {
			List<String> idStrList = Arrays.asList(request.getParameter("deleteIds").split(","));
			List<Integer> idList = StringUtils.convertStringListToIntegerList(idStrList);

			templateService.batchDeletePanelTemplate(idList);

			return JsonResult.deleteSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.deleteFail();
		}
	}
}
