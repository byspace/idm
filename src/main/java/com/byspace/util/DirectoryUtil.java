package com.byspace.util;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class DirectoryUtil {

	public static String getWebInfDir(String name) {
		String url;
		try {
			url = URLDecoder.decode(DirectoryUtil.class
					.getProtectionDomain().getCodeSource().getLocation()
					.getFile(), "UTF-8");
			url = url.substring(0, url.indexOf("/classes/"));
			url += "/" + name + "/";
			initDirectory(url);
			return url;
		} catch (UnsupportedEncodingException e) {
			CustomLogger.error(e, DirectoryUtil.class);
			return null;
		}
	}

	public static String getStaticDir() {
		String url;
		try {
			url = URLDecoder.decode(DirectoryUtil.class
					.getProtectionDomain().getCodeSource().getLocation()
					.getFile(), "UTF-8");
			url = url.substring(0, url.indexOf("/WEB-INF/"));
			url += "/static/";
			initDirectory(url);
			return url;
		} catch (UnsupportedEncodingException e) {
			CustomLogger.error(e, DirectoryUtil.class);
			return null;
		}
	}

	public static String getRootDir() {
		String url;
		try {
			url = URLDecoder.decode(DirectoryUtil.class
					.getProtectionDomain().getCodeSource().getLocation()
					.getFile(), "UTF-8");
			url = url.substring(0, url.indexOf("/WEB-INF/"));
			url += "/";
			initDirectory(url);
			return url;
		} catch (UnsupportedEncodingException e) {
			CustomLogger.error(e, DirectoryUtil.class);
			return null;
		}
	}
	
	private static void initDirectory(String dir) {
		File dirname = new File(dir); 
		if (!dirname.isDirectory()) { 
		     dirname.mkdir();
		} 
	}
}
