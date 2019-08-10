package com.KTP.controller;

import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;

@Controller
public class studentAdminController {

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    @RequestMapping(path = "/studentAdmin")
    public String toStudentAdmin(HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        return "student/admin";
    }

}
