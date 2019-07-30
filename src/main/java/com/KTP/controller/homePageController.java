package com.KTP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homePageController {

    @RequestMapping(path = "/homePage")
    public String toHomePage(){
        return "homePage";
    }
}
