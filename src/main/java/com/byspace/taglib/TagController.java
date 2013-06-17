package com.byspace.taglib;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-15
 * Time: 下午4:16
 */
@Controller
@RequestMapping("/tag")
public class TagController {

	@RequestMapping("panel")
	public String panel() {
		return "tagtest/paneltag";
	}
}
