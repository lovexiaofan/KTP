package com.KTP.controller;

import com.KTP.service.teacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class teacherAdminController {

    private teacherService teacherService;
    @Autowired
    public void setTeacherService(teacherService teacherService){
        this.teacherService = teacherService;
    }

    @RequestMapping(path = "/teacherAdmin")
    public String toTeacherAdmin(HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        return "teacher/admin";
    }

}
