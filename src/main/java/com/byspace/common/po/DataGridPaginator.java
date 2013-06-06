package com.byspace.common.po;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午11:41
 */
public class DataGridPaginator {

	private int pageNum;
	private int rowsLimit;

	private long total;
	private int limitFrom;

	private static final int DEFAULT_ROWS_LIMIT = 10;

	public static DataGridPaginator initByRequest(HttpServletRequest request) {
		DataGridPaginator dataGridPaginator = new DataGridPaginator();
		if (request.getParameter("page") == null) {
			dataGridPaginator.setPageNum(1);
		} else {
			dataGridPaginator.setPageNum(Integer.parseInt(request.getParameter("page")));
		}

		if (request.getParameter("rows") == null) {
			dataGridPaginator.setRowsLimit(DEFAULT_ROWS_LIMIT);
		} else {
			dataGridPaginator.setRowsLimit(Integer.parseInt(request.getParameter("rows")));
		}

		return dataGridPaginator;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getRowsLimit() {
		return rowsLimit;
	}

	public void setRowsLimit(int rowsLimit) {
		this.rowsLimit = rowsLimit;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public int getLimitFrom() {
		return limitFrom;
	}

	public void setLimitFrom(int limitFrom) {
		this.limitFrom = limitFrom;
	}
}
