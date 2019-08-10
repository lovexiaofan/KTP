package com.KTP.controller;

import com.KTP.model.studentModel;
import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class studentChangeController {

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    @RequestMapping(path = "/studentChange")
    public String toStudentChange(HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        List<studentModel> studentModels = studentService.getStudentChangeInfo(sno);
        model.addAttribute("studentInfo", studentModels);
        return "student/change";
    }

    @RequestMapping(path = "/studentChangeSave")
    public String studentChangeSave(@RequestParam(value = "pass", required = false) String pass, @RequestParam(value = "tel", required = false) String tel, @RequestParam(value = "uni", required = false) String uni, @RequestParam(value = "academy", required = false) String academy, HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        try {
            studentService.updateStudentInfo(pass, tel, uni, academy, sno);
            request.setAttribute("message", "更新成功");
            List<studentModel> studentModels = studentService.getStudentChangeInfo(sno);
            model.addAttribute("studentInfo", studentModels);
            return "student/change";
        }catch (Exception e){
            request.setAttribute("message", "更新失败");
            List<studentModel> studentModels = studentService.getStudentChangeInfo(sno);
            model.addAttribute("studentInfo", studentModels);
            return "student/change";
        }
    }

}
