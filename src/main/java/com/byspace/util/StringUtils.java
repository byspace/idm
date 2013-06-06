package com.byspace.util;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-6
 * Time: 上午11:22
 */
public class StringUtils {

	public static String upperCaseFirstChar(String str) {
		return str.substring(0, 1).toUpperCase() + str.substring(1);
	}

	public static List<Integer> convertStringListToIntegerList(List<String> stringList) {

		List<Integer> integerList = new ArrayList<Integer>();

		for (String str : stringList) {
			try {
				integerList.add(Integer.parseInt(str));
			} catch (Exception e) {
				CustomLogger.error(e, StringUtils.class);
			}
		}

		return integerList;
	}
}
