package com.byspace.common.service;

import com.byspace.common.po.DataGridData;
import com.byspace.common.po.DataGridPaginator;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午11:05
 */
public interface DataGridService {

	public DataGridData getDataGridData(String className, DataGridPaginator paginator);
}
