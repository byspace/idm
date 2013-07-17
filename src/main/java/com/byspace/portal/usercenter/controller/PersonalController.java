package com.byspace.portal.usercenter.controller;

import com.byspace.member.entity.PersonalDesignType;
import com.byspace.member.entity.PersonalInformation;
import com.byspace.member.entity.PersonalMember;
import com.byspace.member.entity.PersonalWorkType;
import com.byspace.member.service.MemberService;
import com.byspace.portal.usercenter.service.UserCenterService;
import com.byspace.util.CustomLogger;
import com.byspace.util.DateUtils;
import com.byspace.util.DirectoryUtil;
import com.byspace.util.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-29
 * Time: 上午10:34
 */
@Controller
@RequestMapping("/portal/usercenter/personal")
public class PersonalController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private UserCenterService userCenterService;

	@RequestMapping("index/{id}")
	public String index(@PathVariable("id")int id, HttpServletRequest request, Model model) {

		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);
		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, id));
		return "portal/usercenter/personal/index";
	}

	@RequestMapping("information/{id}")
	public String information(@PathVariable("id") int id, HttpServletRequest request, Model model) {
		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);
		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, id));
		return "portal/usercenter/personal/information";
	}

	@RequestMapping("information/edit/{id}")
	public String editInformation(@PathVariable("id") int id, HttpServletRequest request, Model model) {
		if (!userCenterService.isInSelfCenter(request, id)) {
			return "redirect:/portal/usercenter/personal/information/" + id;
		}

		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);

		if (personalMember.getPersonalInformation().getStartWorkDate() != null) {
			model.addAttribute("startWorkDateStr", DateUtils.dateToStr(personalMember.getPersonalInformation().getStartWorkDate(), "yyyy-MM-dd"));
		}

		model.addAttribute("personalWorkTypeList", memberService.getPersonalWorkTypeList());
		model.addAttribute("personalDesignTypeList", memberService.getPersonalDesignTypeList());

		model.addAttribute("personalWorkType", buildPersonalWorkType(personalMember));
		model.addAttribute("personalDesignType", buildPersonalDesignType(personalMember));


		return "portal/usercenter/personal/editInformation";
	}

	private String buildPersonalWorkType(PersonalMember personalMember) {
		String personalWorkTypeStr = "";
		for (PersonalWorkType personalWorkType : personalMember.getPersonalInformation().getPersonalWorkTypeSet()) {
			personalWorkTypeStr += personalWorkType.getId() + ",";
		}

		return personalWorkTypeStr;
	}

	private String buildPersonalDesignType(PersonalMember personalMember) {
		String personalDesignTypeStr = "";
		for (PersonalDesignType personalDesignType : personalMember.getPersonalInformation().getPersonalDesignTypeSet()) {
			personalDesignTypeStr += personalDesignType.getId() + ",";
		}

		return personalDesignTypeStr;
	}

	@RequestMapping("information/save")
	public String saveInformation(HttpServletRequest request) {

		int id = Integer.parseInt(request.getParameter("id"));
		PersonalMember personalMember = memberService.readPersonalMember(id);

		if (personalMember.getPersonalInformation() == null) {
			personalMember.setPersonalInformation(new PersonalInformation());
		}

		personalMember.getPersonalInformation().setPortrait(request.getParameter("portrait"));
		personalMember.setName(request.getParameter("name"));
		personalMember.getPersonalInformation().setSex(Integer.parseInt(request.getParameter("sex")));
		personalMember.setEmail(request.getParameter("email"));
		/*personalMember.getPersonalInformation().setCountry(request.getParameter("country"));
		personalMember.getPersonalInformation().setProvince(request.getParameter("province"));
		personalMember.getPersonalInformation().setCity(request.getParameter("city"));*/
		personalMember.getPersonalInformation().setAddress(request.getParameter("address"));
		personalMember.getPersonalInformation().setMobile(request.getParameter("mobile"));
		personalMember.getPersonalInformation().setPhone(request.getParameter("phone"));
		personalMember.setIntroduction(request.getParameter("introduction"));

		personalMember.getPersonalInformation().setStartWorkDate(DateUtils.strToDate(request.getParameter("startWorkDate"), "yyyy-MM-dd"));
		personalMember.getPersonalInformation().setCompany(request.getParameter("company"));
		personalMember.getPersonalInformation().setDuty(request.getParameter("duty"));

		personalMember.getPersonalInformation().setSchool(request.getParameter("school"));
		personalMember.getPersonalInformation().setMajor(request.getParameter("major"));
		personalMember.getPersonalInformation().setDegree(request.getParameter("degree"));
		personalMember.getPersonalInformation().setStudyExperience(request.getParameter("studyExperience"));

		personalMember.getPersonalInformation().setWorkArchievement(request.getParameter("workArchievement"));

		this.setPersonalWorkTypes(request.getParameter("personalWorkType"), personalMember);
		this.setPersonalDesignTypes(request.getParameter("personalDesignType"), personalMember);


		memberService.saveMember(personalMember);

		return "redirect:/portal/usercenter/personal/information/edit/" + id;
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

			personalMember.getPersonalInformation().setPersonalWorkTypeSet(personalWorkTypeList);
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

			personalMember.getPersonalInformation().setPersonalDesignTypeSet(personalDesignTypeList);
		}
	}

	@RequestMapping("uploadPortrait")
	@ResponseBody
	public String uploadPortrait(HttpServletRequest request, HttpServletResponse response) {
		try {
			MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
			Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();

			String dir = DirectoryUtil.getStaticDir() + "/upload/portrait/";
			File directory = new File(dir);
			if (!directory.exists()) {
				directory.mkdirs();
			}

			for (String key : fileMap.keySet()) {
				MultipartFile multipartFile = fileMap.get(key);

				String source = request.getRemoteAddr() + DateUtils.getCurrentTime();

				String oriName = multipartFile.getOriginalFilename();
				String suffix = oriName.substring(oriName.lastIndexOf("."), oriName.length());
				String name = Md5Utils.encode(source) + suffix;
				String fileName = dir + "/" + name;

				FileOutputStream stream = new FileOutputStream(new File(fileName));
				stream.write(multipartFile.getBytes());
				stream.flush();
				stream.close();

				return name;
			}
		} catch (Exception e) {
			CustomLogger.error(e, this);

			return "fail";
		}

		return "fail";
	}
}
