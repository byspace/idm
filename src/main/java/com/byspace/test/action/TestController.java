package com.byspace.test.action;

import com.byspace.util.CustomLogger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping("index")
    public String index() {

        CustomLogger.info("index", this);

        return "test/index";
    }
}
