package com.byspace.portal.usercenter.controller;

import com.byspace.member.entity.PersonalMember;
import com.byspace.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping("index/{id}")
	public String index(@PathVariable("id")int id, Model model) {

		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);
		return "portal/usercenter/personal/index";
	}

	@RequestMapping("information/{id}")
	public String information(@PathVariable("id") int id, Model model) {
		PersonalMember personalMember = memberService.readPersonalMember(id);
		model.addAttribute("member", personalMember);
		return "portal/usercenter/personal/information";
	}
}
