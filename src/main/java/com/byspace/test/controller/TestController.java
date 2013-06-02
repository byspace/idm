package com.byspace.test.controller;

import com.byspace.test.entity.TestBean;
import com.byspace.test.service.TestService;
import com.byspace.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Stone
 * Date: 13-6-2
 * Time: 上午1:07
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping("test")
public class TestController {

    @Autowired
    private TestService testService;

    @RequestMapping("index")
    public String index() {

        CustomLogger.info("index", this);

        return "test/index";
    }

    @RequestMapping("read/{id}")
    public String read(@PathVariable("id")int id, Model model) {

        model.addAttribute("testBean", testService.read(id));

        return "test/read";
    }
}
