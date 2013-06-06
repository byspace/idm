package com.byspace.common.po;

import net.sf.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午10:58
 */
public class DataGridData {

	private long total;
	private List<JSONObject> rows = new ArrayList<JSONObject>();

	public void addRow(JSONObject jsonObject) {
		rows.add(jsonObject);
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<JSONObject> getRows() {
		return rows;
	}

	public void setRows(List<JSONObject> rows) {
		this.rows = rows;
	}
}
