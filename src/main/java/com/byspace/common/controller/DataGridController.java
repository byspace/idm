package com.byspace.common.controller;

import com.byspace.common.po.DataGridData;
import com.byspace.common.po.DataGridPaginator;
import com.byspace.common.service.DataGridService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午11:30
 */
@Controller
@RequestMapping("dataGrid")
public class DataGridController {

	@Autowired
	private DataGridService dataGridService;

	@RequestMapping("getData/{className}")
	@ResponseBody
	public DataGridData getDataGridData(HttpServletRequest request, @PathVariable("className") String className) {
		DataGridPaginator paginator = DataGridPaginator.initByRequest(request);

		return dataGridService.getDataGridData(className, paginator);
	}
}
