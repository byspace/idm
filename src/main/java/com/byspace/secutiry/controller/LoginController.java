package com.byspace.secutiry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Stone
 * Date: 13-6-2
 * Time: 下午3:36
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping("index")
    public String index() {
        return "login/index";
    }
}
