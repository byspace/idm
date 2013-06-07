package com.byspace.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * description:
 * User: yangxu103016
 * Date: 12-10-30
 * Time: 上午9:34
 */
public class PropertyLoader {

	private static Map<String, Properties> propertiesMap = new HashMap<String, Properties>();

	public static String read(String fileName, String key) {

		if (!propertiesMap.containsKey(fileName) || propertiesMap.get(fileName) == null) {
			loadProperty(fileName);
		}

		Properties properties = propertiesMap.get(fileName);

		return properties.getProperty(key);
	}

	public static String readConfigProperty(String key) {
		return read("config.properties", key);
	}

	private static void loadProperty(String fileName) {
		Properties properties = new Properties();

		try {
			InputStream in = new BufferedInputStream(new FileInputStream(getConfigDirectoryPath() + fileName));
			properties.load(in);

			propertiesMap.put(fileName, properties);
		} catch (Exception e) {
			CustomLogger.error(e, PropertyLoader.class);
		}
	}

	private static String getConfigDirectoryPath() {
		try {
			String url = URLDecoder.decode(PropertyLoader.class
					.getProtectionDomain().getCodeSource().getLocation()
					.getFile(), "UTF-8");
			url = url.substring(0, url.indexOf("/classes/") + 9);
			return url;
		} catch (UnsupportedEncodingException e) {
			CustomLogger.error(e, PropertyLoader.class);
			return null;
		}
	}
}
