package com.byspace.util;

import java.io.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午9:24
 */
public class FileUtils {

	public static String readFileByLine(String path) {
		BufferedReader reader = null;

		try {
			reader = new BufferedReader(new InputStreamReader(new FileInputStream(path),"UTF-8"));
			StringBuffer buffer = new StringBuffer();
			String tmpString = null;
			while ((tmpString = reader.readLine()) != null) {
				buffer.append(tmpString);
			}

			return buffer.toString();
		} catch (IOException  e) {
			CustomLogger.error(e, FileUtils.class);
			return null;
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e) {
					CustomLogger.error(e, FileUtils.class);
				}
			}
		}
	}
}
