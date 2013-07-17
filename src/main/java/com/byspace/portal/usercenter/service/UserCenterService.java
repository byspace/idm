package com.byspace.portal.usercenter.service;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-15
 * Time: 上午10:43
 */
public interface UserCenterService {

	public boolean isInSelfCenter(HttpServletRequest request, int userId);
}
