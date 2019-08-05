package com.KTP.controller;

import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginOrRegisterController {

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    @RequestMapping(path = "/loginOrRegister")
    public String toLoginOrRegister(Model model){
        String pass = studentService.getStudentPassword("131001");
        model.addAttribute("password", pass);
        System.out.println(pass);
        return "loginOrRegister";
    }

}
