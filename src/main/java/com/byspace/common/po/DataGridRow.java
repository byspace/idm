package com.byspace.common.po;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午10:58
 */
public class DataGridRow {

	private Map<String, Object> values = new HashMap<String, Object>();

	public void addValue(String key, Object value) {
		if (values.containsKey(key)) {
			values.remove(key);
		}
		values.put(key, value);
	}

	public Map<String, Object> getValues() {
		return values;
	}

	public void setValues(Map<String, Object> values) {
		this.values = values;
	}
}
