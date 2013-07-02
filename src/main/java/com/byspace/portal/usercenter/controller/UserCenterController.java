package com.byspace.portal.usercenter.controller;

import com.byspace.member.entity.EnterpriseMember;
import com.byspace.member.entity.Member;
import com.byspace.member.entity.PersonalMember;
import com.byspace.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-28
 * Time: 下午2:51
 */
@Controller
@RequestMapping("/portal/usercenter")
public class UserCenterController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("index")
	public String index(HttpServletRequest request, Model model) {

		Member member = memberService.getCurrentMember(request);
		if ("personal".equals(member.getType())) {
			PersonalMember personalMember = memberService.readPersonalMember(member.getId());
			return "redirect:/portal/usercenter/personal/index/" + personalMember.getId();
		} else if ("enterprise".equals(member.getType())) {
			EnterpriseMember enterpriseMember = memberService.readEnterpriseMember(member.getId());
			model.addAttribute("member", enterpriseMember);
		}

		return "portal/usercenter/" + member.getType() + "/index";
	}

}
