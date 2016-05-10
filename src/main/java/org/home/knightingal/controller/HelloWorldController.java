package org.home.knightingal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/helloworld")
public class HelloWorldController {

    @RequestMapping(value="/index")
    @ResponseBody
    public String index() {
        return "Hello world";
    }
}
