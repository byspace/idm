package com.byspace.member.controller;

import com.byspace.member.entity.*;
import com.byspace.member.po.SecurityCode;
import com.byspace.member.service.MemberService;
import com.byspace.util.CustomLogger;
import com.byspace.util.Md5Utils;
import com.byspace.util.PropertyLoader;
import com.byspace.util.SecurityCodeCreator;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import java.util.HashSet;
import java.util.Set;

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
	private static final String REGISTER_MEMBER_KEY = "regist_member";

	@Autowired
	private MemberService memberService;

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

		Member member = new Member();
		member.setUserName(request.getParameter("username"));
		member.setPassword(Md5Utils.encode(request.getParameter("password")));
		member.setEmail(request.getParameter("email"));

		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step2");
		request.getSession().setAttribute(REGISTER_MEMBER_KEY, member);

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
	public String step3(HttpServletRequest request, Model model) {

		String memberType = (String) request.getSession().getAttribute(REGISTER_MEMBER_TYPE_SESSION_KEY);

		if ("personal".equals(memberType)) {
			model.addAttribute("personalWorkTypeList", memberService.getPersonalWorkTypeList());
			model.addAttribute("personalDesignTypeList", memberService.getPersonalDesignTypeList());
		} else if ("enterprise".equals(memberType)) {
			model.addAttribute("enterpriseTypeList", memberService.getEnterpriseTypeList());
		}

		return "/member/register/" + memberType;
	}

	@RequestMapping("personalCommit")
	public String personalCommit(HttpServletRequest request) {

		PersonalMember personalMember = PersonalMember.buildFromMember((Member) request.getSession().getAttribute(REGISTER_MEMBER_KEY));

		personalMember.setName(request.getParameter("name"));
		personalMember.setSex(request.getParameter("sex"));
		personalMember.setCountry(request.getParameter("country"));
		personalMember.setProvince(request.getParameter("province"));
		personalMember.setCity(request.getParameter("city"));
		personalMember.setAddress(request.getParameter("address"));
		personalMember.setMobile(request.getParameter("mobile"));
		personalMember.setPhone(request.getParameter("phone"));
		personalMember.setIntroduction(request.getParameter("introduction"));
		personalMember.setRegistDate(new Date());
		personalMember.setActive(true);

		this.setPersonalWorkTypes(request.getParameter("personalWorkType"), personalMember);
		this.setPersonalDesignTypes(request.getParameter("personalDesignType"), personalMember);

		memberService.saveMember(personalMember);

		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step4");
		return "redirect:/member/register/index";
	}

	private void setPersonalWorkTypes(String personalWorkType, PersonalMember personalMember) {
		if (!personalWorkType.equals("")) {
			String[] types = personalWorkType.split(",");
			Set<PersonalWorkType> personalWorkTypeList = new HashSet<PersonalWorkType>();
			for (String typeStr : types) {
				if (!typeStr.equals("")) {
					int typeId = Integer.parseInt(typeStr);
					personalWorkTypeList.add(memberService.getPersonalWorkTypeById(typeId));
				}
			}

			personalMember.setPersonalWorkTypeSet(personalWorkTypeList);
		}
	}

	private void setPersonalDesignTypes(String personalDesignType, PersonalMember personalMember) {
		if (!personalDesignType.equals("")) {
			String[] types = personalDesignType.split(",");
			Set<PersonalDesignType> personalDesignTypeList = new HashSet<PersonalDesignType>();
			for (String typeStr : types) {
				if (!typeStr.equals("")) {
					int typeId = Integer.parseInt(typeStr);
					personalDesignTypeList.add(memberService.getPersonalDesignTypeById(typeId));
				}
			}

			personalMember.setPersonalDesignTypeSet(personalDesignTypeList);
		}
	}



	@RequestMapping("enterpriseCommit")
	public String enterpriseCommit(HttpServletRequest request) {

		EnterpriseMember enterpriseMember = EnterpriseMember.buildEnterpriseType((Member)request.getSession().getAttribute(REGISTER_MEMBER_KEY));

		enterpriseMember.setName(request.getParameter("name"));
		enterpriseMember.setEnterpriseType(memberService.getEnterPriseTypeById(Integer.parseInt(request.getParameter("enterpriseType"))));
		enterpriseMember.setMainPage(request.getParameter("mainPage"));
		enterpriseMember.setDetail(request.getParameter("detail"));
		enterpriseMember.setIntroduction(request.getParameter("introduction"));
		enterpriseMember.setRegistDate(new Date());
		enterpriseMember.setActive(true);

		this.setContactInfo(request, enterpriseMember);

		memberService.saveMember(enterpriseMember);

		request.getSession().setAttribute(REGISTER_STEP_SESSION_KEY, "step4");
		return "redirect:/member/register/index";
	}

	private void setContactInfo(HttpServletRequest request, EnterpriseMember enterpriseMember) {
		EnterpriseContact enterpriseContact = new EnterpriseContact();
		enterpriseContact.setEmail(request.getParameter("email"));
		enterpriseContact.setCountry(request.getParameter("country"));
		enterpriseContact.setProvince(request.getParameter("province"));
		enterpriseContact.setCity(request.getParameter("city"));
		enterpriseContact.setAddress(request.getParameter("address"));
		enterpriseContact.setPostCode(request.getParameter("postCode"));
		enterpriseContact.setContact(request.getParameter("contact"));
		enterpriseContact.setMobile(request.getParameter("mobile"));
		enterpriseContact.setPhone(request.getParameter("phone"));
		enterpriseContact.setFax(request.getParameter("fax"));

		Set<EnterpriseContact> enterpriseContactSet = new HashSet<EnterpriseContact>();
		enterpriseContactSet.add(enterpriseContact);

		enterpriseMember.setEnterpriseContactSet(enterpriseContactSet);
	}

	@RequestMapping("step4")
	public String step4(HttpServletRequest request) {
		request.getSession().removeAttribute(REGISTER_STEP_SESSION_KEY);
		return "/member/register/step4";
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
