package com.byspace.util;

import com.byspace.util.md5.MD5;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-18
 * Time: 下午4:28
 */
public class Md5Utils {

	public static String encode(String source) {
		MD5 md5 = new MD5();
		md5.Update(source);

		return md5.asHex();
	}

}
