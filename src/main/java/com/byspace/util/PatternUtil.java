package com.byspace.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-8
 * Time: 下午2:36
 */
public class PatternUtil {

	public static boolean match(String str, String expression) {
		Pattern pattern = Pattern.compile(expression);
		Matcher matcher = pattern.matcher(str);
		return matcher.find();
	}

	public static List<String> getMatchedContent(String str, String expression) {
		Pattern pattern = Pattern.compile(expression);
		Matcher matcher = pattern.matcher(str);

		List<String> results = new ArrayList<String>();
		while (matcher.find()) {
			results.add(matcher.group(1));
		}

		return results;
	}
}
