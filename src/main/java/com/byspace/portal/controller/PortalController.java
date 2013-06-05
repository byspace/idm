package com.byspace.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午3:09
 */
@Controller
@RequestMapping("portal")
public class PortalController {

	@RequestMapping("index")
	public String index() {
		return "portal/index";
	}

}
