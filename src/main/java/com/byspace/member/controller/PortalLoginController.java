package com.byspace.member.controller;

import com.byspace.member.entity.Member;
import com.byspace.member.po.SecurityCode;
import com.byspace.member.service.MemberService;
import com.byspace.util.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-27
 * Time: 下午2:40
 */
@Controller
@RequestMapping("/member/login")
public class PortalLoginController {

	@Autowired
	private MemberService memberService;

	public static final String COOKIE_USERNAME_KEY = "cookie_username_key";
	public static final String COOKIE_USERNAME = "cookie_username";
	public static final String COOKIE_PASSWORD = "cookie_password";

	@RequestMapping("index")
	public String index(HttpServletRequest request, Model model) {

		for (Cookie cookie : request.getCookies()) {
			if (cookie.getName().equals(COOKIE_USERNAME_KEY)) {
				model.addAttribute("username", cookie.getValue());
			}
		}

		return "member/login/index";
	}

	@RequestMapping("loginCommit")
	public String loginCommit(HttpServletRequest request, HttpServletResponse response, Model model) {

		String code = request.getParameter("code");
		if (code == null || code.equals("")) {
			model.addAttribute("loginResult", "验证码错误");
			return "member/login/index";
		}
		code = Md5Utils.encode(code);
		SecurityCode securityCode = (SecurityCode) request.getSession().getAttribute(RegisterController.REGISTER_SECURITY_CODE_KEY);

		if (securityCode == null || securityCode.isTimeOut()) {
			model.addAttribute("loginResult", "验证码超时");
			return "member/login/index";
		} else if (!securityCode.getCode().equals(code)) {
			model.addAttribute("loginResult", "验证码错误");
			return "member/login/index";
		}

		Member member = memberService.readMemberByUsername(request.getParameter("username"));
		if (member == null) {
			model.addAttribute("loginResult", "用户名或密码错误");
			return "member/login/index";
		}

		if (!member.getPassword().equals(Md5Utils.encode(request.getParameter("password")))) {
			model.addAttribute("loginResult", "用户名或密码错误");
			return "member/login/index";
		}

		memberService.setCurrentMember(request, member);

		this.setCookies(request, response);

		return "redirect:/portal/index";
	}

	private void setCookies(HttpServletRequest request, HttpServletResponse response) {

		if (request.getParameter("rememberUsername") == null) {
			Cookie cookie = new Cookie(COOKIE_USERNAME_KEY, "");
			cookie.setMaxAge(0);
			cookie.setPath("/");

			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie(COOKIE_USERNAME_KEY, request.getParameter("username"));
			cookie.setMaxAge(Integer.MAX_VALUE);
			response.addCookie(cookie);
		}

		if (request.getParameter("keepLogin") == null) {
			this.removeAutoLoginCookie(response);
		} else {
			Cookie usernameCookie = new Cookie(COOKIE_USERNAME, request.getParameter("username"));
			usernameCookie.setMaxAge(Integer.MAX_VALUE);
			response.addCookie(usernameCookie);

			Cookie passwordCookie = new Cookie(COOKIE_PASSWORD, Md5Utils.encode(request.getParameter("password")));
			passwordCookie.setMaxAge(Integer.MAX_VALUE);
			response.addCookie(passwordCookie);
		}
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		memberService.removeCurrentUser(request);
		this.removeAutoLoginCookie(response);
		return "redirect:/portal/index";
	}

	@RequestMapping("getCurrentMember")
	@ResponseBody
	public Member getCurrentMember(HttpServletRequest request) {

		Member member = memberService.getCurrentMember(request);
		member.getCommentList().clear();

		return member;
	}

	private void removeAutoLoginCookie(HttpServletResponse response) {

		Cookie usernameKeyCookie = new Cookie(COOKIE_USERNAME_KEY, "");
		usernameKeyCookie.setMaxAge(0);
		response.addCookie(usernameKeyCookie);

		Cookie usernameCookie = new Cookie(COOKIE_USERNAME, "");
		usernameCookie.setMaxAge(0);
		response.addCookie(usernameCookie);

		Cookie passwordCookie = new Cookie(COOKIE_PASSWORD, "");
		passwordCookie.setMaxAge(0);
		response.addCookie(passwordCookie);
	}
}
