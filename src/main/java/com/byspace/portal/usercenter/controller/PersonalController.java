package com.byspace.portal.usercenter.controller;

import com.byspace.common.po.JsonResult;
import com.byspace.member.entity.*;
import com.byspace.member.service.CommentService;
import com.byspace.member.service.MemberService;
import com.byspace.member.service.PersonalDesignService;
import com.byspace.member.service.PersonalPostService;
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
import java.util.Date;
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
	@Autowired
	private PersonalDesignService personalDesignService;
	@Autowired
	private PersonalPostService personalPostService;
	@Autowired
	private CommentService commentService;

	@RequestMapping("index/{id}")
	public String index(@PathVariable("id")int id, HttpServletRequest request, Model model) {

		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);
		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, id));
		model.addAttribute("personalDesignList", personalDesignService.getPersonalDesignList(personalMember));

		return "portal/usercenter/personal/index";
	}

	@RequestMapping("information/{id}")
	public String information(@PathVariable("id") int id, HttpServletRequest request, Model model) {
		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);
		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, id));
		model.addAttribute("bestWorkDesignTypeList", personalDesignService.getBestWorkPersonalDesignList(personalMember));
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

	@RequestMapping("design/{memberId}")
	public String design(@PathVariable("memberId") int memberId, HttpServletRequest request, Model model) {

		PersonalMember personalMember = memberService.readPersonalMember(memberId);

		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, memberId));
		model.addAttribute("member", personalMember);
		model.addAttribute("designTypeList", personalDesignService.getPersonalDesignList(personalMember));
		model.addAttribute("bestWorkDesignTypeList", personalDesignService.getBestWorkPersonalDesignList(personalMember));

		return "portal/usercenter/personal/design";
	}

	@RequestMapping("design/view/{id}")
	public String viewDesign(@PathVariable("id") int id, Model model) {

		PersonalDesign personalDesign = personalDesignService.readPersonalDesign(id);
		model.addAttribute("member", personalDesign.getAuthor());
		model.addAttribute("personalDesign", personalDesignService.readPersonalDesign(id));
		return "portal/usercenter/personal/viewDesign";
	}

	@RequestMapping("design/add")
	public String addDesign(Model model, HttpServletRequest request) {


		model.addAttribute("member", memberService.getCurrentMember(request));
		model.addAttribute("designTypes", personalDesignService.getDesignTypeList());
		return "portal/usercenter/personal/editDesign";
	}

	@RequestMapping("design/edit/{id}")
	public String editDesign(@PathVariable("id") int id, Model model) {


		PersonalDesign personalDesign = personalDesignService.readPersonalDesign(id);

		model.addAttribute("designTypes", personalDesignService.getDesignTypeList());
		model.addAttribute("personalDesign", personalDesign);
		model.addAttribute("member", personalDesign.getAuthor());

		return "portal/usercenter/personal/editDesign";
	}

	@RequestMapping("design/save")
	@ResponseBody
	public JsonResult saveDesign(HttpServletRequest request) {

		try {
			PersonalDesign personalDesign = null;

			String idStr = request.getParameter("id");
			if (idStr == null || idStr.equals("")) {
				personalDesign = new PersonalDesign();
				personalDesign.setCreateDate(new Date());
				personalDesign.setAuthor(memberService.getCurrentMember(request));
			} else {
				personalDesign = personalDesignService.readPersonalDesign(Integer.parseInt(idStr));
			}

			personalDesign.setTitle(request.getParameter("title"));
			personalDesign.setSummary(request.getParameter("summary"));
			personalDesign.setType(request.getParameter("type"));
			personalDesign.setContent(request.getParameter("content"));
			personalDesign.setTitleImage(request.getParameter("titleImage"));
			personalDesign.setBestWork(request.getParameter("bestWork"));

			personalDesignService.savePersonalDesign(personalDesign);

			return JsonResult.saveSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.saveFail();
		}
	}

	@RequestMapping("post/{memberId}")
	public String post(@PathVariable("memberId")int memberId, HttpServletRequest request, Model model) {

		PersonalMember personalMember = memberService.readPersonalMember(memberId);

		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, memberId));
		model.addAttribute("member", personalMember);
		model.addAttribute("bestWorkDesignTypeList", personalDesignService.getBestWorkPersonalDesignList(personalMember));
		model.addAttribute("personalPostList", personalPostService.getPersonalPostList(personalMember));

		return "portal/usercenter/personal/post";
	}

	@RequestMapping("post/view/{postId}")
	public String viewPost(@PathVariable("postId") int postId, HttpServletRequest request, Model model) {

		PersonalPost personalPost = personalPostService.readPersonalPost(postId);
		model.addAttribute("member", personalPost.getAuthor());
		model.addAttribute("personalPost", personalPost);

		return "portal/usercenter/personal/viewPost";
	}

	@RequestMapping("post/add")
	public String addPost(HttpServletRequest request, Model model) {
		model.addAttribute("member", memberService.getCurrentMember(request));

		return "portal/usercenter/personal/editPost";
	}

	@RequestMapping("post/edit/{postId}")
	public String editPost(@PathVariable("postId") int postId, HttpServletRequest request, Model model) {

		PersonalPost personalPost = personalPostService.readPersonalPost(postId);
		model.addAttribute("member", personalPost.getAuthor());
		model.addAttribute("personalPost", personalPost);

		return "portal/usercenter/personal/editPost";
	}

	@RequestMapping("post/save")
	@ResponseBody
	public JsonResult savePost(HttpServletRequest request) {
		try {
			PersonalPost personalPost = null;

			String idStr = request.getParameter("id");
			if (idStr == null || idStr.equals("")) {
				personalPost = new PersonalPost();
				personalPost.setCreateDate(new Date());
				personalPost.setAuthor(memberService.getCurrentMember(request));
			} else {
				personalPost = personalPostService.readPersonalPost(Integer.parseInt(idStr));
			}

			personalPost.setTitle(request.getParameter("title"));
			personalPost.setSummary(request.getParameter("summary"));
			personalPost.setContent(request.getParameter("content"));

			personalPostService.savePersonalPost(personalPost);

			return JsonResult.saveSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.saveFail();
		}
	}

	@RequestMapping("comment/{memberId}")
	public String comment(@PathVariable("memberId")int memberId, HttpServletRequest request, Model model) {
		PersonalMember personalMember = memberService.readPersonalMember(memberId);

		model.addAttribute("isCurrentUser", userCenterService.isInSelfCenter(request, memberId));
		model.addAttribute("member", personalMember);
		model.addAttribute("bestWorkDesignTypeList", personalDesignService.getBestWorkPersonalDesignList(personalMember));

		return "portal/usercenter/personal/comment";
	}

	@RequestMapping("leaveMessage/{memberId}")
	@ResponseBody
	public JsonResult leaveMessage(@PathVariable("memberId")int memberId, HttpServletRequest request) {
		try {
			Member currentMember = memberService.getCurrentMember(request);
			Member messageMember = memberService.readPersonalMember(memberId);

			Comment comment = new Comment();
			comment.setMessage(request.getParameter("message"));
			comment.setAuthor(currentMember);
			comment.setDate(new Date());

			commentService.saveComment(comment);

			messageMember.getCommentList().add(comment);
			memberService.saveMember(messageMember);

			return JsonResult.saveSuccess();
		} catch (Exception e) {
			CustomLogger.error(e, this);
			return JsonResult.fail("留言失败");
		}
	}
}
