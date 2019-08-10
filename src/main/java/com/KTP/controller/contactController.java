package com.KTP.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class contactController {

    @RequestMapping(path = "/contact")
    public String toContact(){
        return "admin/contact";
    }

}
