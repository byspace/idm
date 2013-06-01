package com.byspace.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * description:
 * User: yangxu103016
 * Date: 12-12-17
 * Time: 下午4:02
 */
public class DateUtils {

	public static Date simpleStrToDate(String str) {
		return strToDate(str, "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 日期字符串验证，并转换格式
	 * @param str
	 * @return date
	 */
	public static Date strToDate(String str, String formatStr) {

		SimpleDateFormat format = new SimpleDateFormat(formatStr);
		Date date = null;
		try {
			date = format.parse(str);
		} catch (ParseException e) {
			CustomLogger.error(e, DateUtils.class);
		}
		return date;
	}

	public static String dateToStr(Date d, String formatStr) {

		SimpleDateFormat format = new SimpleDateFormat(formatStr);
		return format.format(d);
	}

	public static String getSimpleDateString(Date date) {
		try {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			return format.format(date);
		} catch (Exception e) {
			return "";
		}
	}


	/**
	 * 获取yyyy-MM-dd HH:mm:ss格式的当前时间
	 * @return
	 */
	public static String getCurrentTime() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(new Date());
	}

	/**
	 * @return 当前时间戳
	 */
	public static String getCurrentTimestamp() {
		return new Date().getTime() + "";
	}

	public static Date getStartOfADay(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);

		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);

		return calendar.getTime();
	}

	public static Date nextDay(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);

		calendar.add(Calendar.DAY_OF_MONTH, 1);

		return calendar.getTime();
	}

	public static boolean isWeekend(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		int week = calendar.get(Calendar.DAY_OF_WEEK);

		return week == 1 || week == 7;
	}
}

