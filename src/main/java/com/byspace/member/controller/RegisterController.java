package com.byspace.member.controller;

import com.byspace.member.po.SecurityCode;
import com.byspace.util.CustomLogger;
import com.byspace.util.Md5Utils;
import com.byspace.util.PropertyLoader;
import com.byspace.util.SecurityCodeCreator;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午2:13
 */
@Controller
@RequestMapping("/member/register")
public class RegisterController {

	private static final String REGISTER_STEP_SESSION_KEY = "regist_step";
	private static final String REGISTER_MEMBER_TYPE_SESSION_KEY = "regist_member_type";

	@RequestMapping("index")
	public String register(HttpServletRequest request) {

		String step = (String) request.getSession().getAttribute(REGISTER_STEP_SESSION_KEY);
		if (step == null) {
			step = "step1";
		}

		return "forward:/member/register/" + step;
	}

	@RequestMapping("step1")
	public String step1() {
		return "/member/register/step1";
	}

	@RequestMapping("step1Commit")
	public String step1Commit(HttpServletRequest request) {

		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step2");

		return "redirect:/member/register/index";
	}

	@RequestMapping("step2")
	public String step2() {
		return "/member/register/step2";
	}

	@RequestMapping("step2Commit")
	public String step2Commit(HttpServletRequest request) {

		String memberType = request.getParameter("memberType");

		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step3");
		request.getSession().setAttribute(REGISTER_MEMBER_TYPE_SESSION_KEY, memberType);

		return "redirect:/member/register/index";
	}

	@RequestMapping("step3")
	public String step3(HttpServletRequest request) {

		String memberType = (String) request.getSession().getAttribute(REGISTER_MEMBER_TYPE_SESSION_KEY);

		return "/member/register/" + memberType;
	}

	@RequestMapping("personalCommit")
	public String personalCommit(HttpServletRequest request) {
		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step4");
		return "redirect:/member/register/index";
	}

	@RequestMapping("enterpriseCommit")
	public String enterpriseCommit(HttpServletRequest request) {
		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step4");
		return "redirect:/member/register/index";
	}

	@RequestMapping("step4")
	public String step4() {
		return "/member/register/step4";
	}

	@RequestMapping("step4Commit")
	public String step4Commit(HttpServletRequest request) {
		request.getSession().removeAttribute(REGISTER_STEP_SESSION_KEY);
		return "redirect:/member/register/index";
	}

	@RequestMapping("cancel")
	public String cancel(HttpServletRequest request) {

		String step = (String) request.getSession().getAttribute(REGISTER_STEP_SESSION_KEY);
		if (step != null) {
			if (step.equals("step1")) {
				request.getSession().removeAttribute(REGISTER_STEP_SESSION_KEY);
			} else {
				int stepNumber = Integer.parseInt(step.substring(4));
				request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step" + (stepNumber - 1));
			}
		}

		return "forward:/member/register/index";
	}

	@RequestMapping("getSecurityCode/{time}")
	public void getSecurityCode(@PathVariable("time")String time,HttpServletRequest request, HttpServletResponse response) {
		String code = SecurityCodeCreator.getRandString();
		BufferedImage bufferedImage = SecurityCodeCreator.getImage(code);

		code = Md5Utils.encode(code);

		SecurityCode securityCode = new SecurityCode();
		securityCode.setCode(code);
		securityCode.setCreateDate(new Date());
		securityCode.setTimeoutSeconds(Double.parseDouble(PropertyLoader.readConfigProperty("security.code.timeout")));

		try {
			request.getSession().setAttribute("security_code", securityCode);
			response.setContentType("image/jpeg");
			OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outputStream);
			encoder.encode(bufferedImage);
			outputStream.flush();
			outputStream.close();
		} catch (IOException e) {
			CustomLogger.error(e, this);
		}
	}
}
