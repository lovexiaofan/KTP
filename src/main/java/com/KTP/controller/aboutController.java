package com.KTP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class aboutController {

    @RequestMapping(path = "/about")
    public String toAbout(){
        return "about";
    }

}
