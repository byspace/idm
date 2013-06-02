package com.byspace.console.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Stone
 * Date: 13-6-2
 * Time: 下午3:19
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("console")
public class IndexController {

    @RequestMapping("index")
    public String index() {
        return "console/index";
    }
}
