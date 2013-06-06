package com.byspace.portal.article.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.portal.article.entity.Category;
import com.byspace.portal.article.service.CategoryService;
import com.byspace.util.CustomLogger;
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
 * Date: 13-6-6
 * Time: 上午9:47
 */
@Controller
@RequestMapping("/portal/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("list")
	public String list() {
		return "portal/category/list";
	}

	@RequestMapping("read/{categoryId}")
	@ResponseBody
	public Category read(@PathVariable("categoryId") int categoryId) {
		return categoryService.read(categoryId);
	}

	@RequestMapping("delete")
	@ResponseBody
	public JsonResult delete(HttpServletRequest request) {
		try {

			String deleteIds = request.getParameter("deleteIds");
			List<String> deleteIdList = Arrays.asList(deleteIds.split(","));

			categoryService.batchDelete(StringUtils.convertStringListToIntegerList(deleteIdList));

			return JsonResult.success("删除操作成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("删除操作失败");
		}
	}

	@RequestMapping("save")
	@ResponseBody
	public JsonResult save(HttpServletRequest request) {
		try {

			Category category = categoryService.read(Integer.parseInt(request.getParameter("id")));
			if (category == null) {
				category = new Category();
			}

			category.setName(request.getParameter("name"));
			category.setDetail(request.getParameter("detail"));

			categoryService.save(category);

			return JsonResult.success("保存成功");
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("保存失败");
		}
	}

	@RequestMapping("getList")
	@ResponseBody
	public List<Category> getList() {
		return categoryService.getAllCategories();
	}
}
