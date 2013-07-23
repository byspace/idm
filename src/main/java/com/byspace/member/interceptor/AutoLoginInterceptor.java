package com.byspace.member.interceptor;

import com.byspace.member.controller.PortalLoginController;
import com.byspace.member.entity.Member;
import com.byspace.member.service.MemberService;
import com.byspace.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-27
 * Time: 下午4:38
 */
public class AutoLoginInterceptor implements HandlerInterceptor {

	@Autowired
	private MemberService memberService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		String username = getCookieValue(request, PortalLoginController.COOKIE_USERNAME);
		String password = getCookieValue(request, PortalLoginController.COOKIE_PASSWORD);

		Member member = memberService.readMemberByUsername(username);
		if (member != null && member.getPassword().equals(password)) {
			memberService.setCurrentMember(request, member);
		}

		return true;
	}

	private String getCookieValue(HttpServletRequest request, String key) {
		if (request.getCookies() == null) {
			return "";
		}
		for (Cookie cookie : request.getCookies()) {
			if (cookie.getName().equals(key)) {
				return cookie.getValue();
			}
		}

		return "";
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {
		//To change body of implemented methods use File | Settings | File Templates.
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {
		//To change body of implemented methods use File | Settings | File Templates.
	}
}
