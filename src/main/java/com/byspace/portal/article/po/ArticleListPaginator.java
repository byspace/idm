package com.byspace.portal.article.po;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-7
 * Time: 下午5:33
 */
public class ArticleListPaginator {

	private int pageNum;
	private long total;
	private int limit;

	private long totalPage;

	public void calculateTotalPage() {
		if (limit == 0) {
			totalPage = 0;
		} else {
			long left = total % limit;
			long page = total / limit;

			if (left == 0) {
				totalPage = page;
			} else {
				totalPage = page + 1;
			}
		}
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}
}
