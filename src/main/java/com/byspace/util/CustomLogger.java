package com.byspace.util;

import org.apache.log4j.Logger;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/**
 * description:
 * User: yangxu103016
 * Date: 12-12-14
 * Time: 下午3:46
 */
public class CustomLogger {

	public static void info(String msg, Object obj) {
		Logger logger = Logger.getLogger(obj.getClass());
		logger.info(msg);
	}

	public static void error(String msg, Object obj) {
		Logger logger = Logger.getLogger(obj.getClass());
		logger.error(msg);
	}

	public static void error(Exception e, Object obj) {
		Logger logger = Logger.getLogger(obj.getClass());
		Writer w = new StringWriter();
		e.printStackTrace(new PrintWriter(w));

		logger.error(w.toString());
	}
}
