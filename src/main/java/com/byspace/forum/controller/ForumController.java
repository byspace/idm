package com.byspace.forum.controller;

import com.byspace.util.PropertyLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午2:47
 */
@Controller
@RequestMapping("/forum")
public class ForumController {

	@RequestMapping("index")
	public String index() {
		String forumUrl = PropertyLoader.readConfigProperty("forum.url");
		return "redirect:" + forumUrl;
	}
}
