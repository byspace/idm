package com.byspace.portal.usercenter.service.impl;

import com.byspace.member.entity.Member;
import com.byspace.member.service.MemberService;
import com.byspace.portal.usercenter.service.UserCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-15
 * Time: 上午10:43
 */
@Service("userCenterService")
@Transactional
public class UserCenterServiceImpl implements UserCenterService {

	@Autowired
	private MemberService memberService;

	@Override
	@Transactional(readOnly = true)
	public boolean isInSelfCenter(HttpServletRequest request, int userId) {

		Member currentMember = memberService.getCurrentMember(request);
		if (currentMember == null) {
			return false;
		}
		return currentMember.getId() == userId;
	}
}
