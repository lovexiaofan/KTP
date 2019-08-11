package com.KTP.controller;

import com.KTP.model.teacherModel;
import com.KTP.service.teacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class teacherChangeController {

    private teacherService teacherService;
    @Autowired
    public void setTeacherService(teacherService teacherService){
        this.teacherService = teacherService;
    }

    @RequestMapping(path = "/teacherChange")
    public String toTeacherChange(HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        List<teacherModel> teacherModels = teacherService.getTeacherChangeInfo(cno);
        model.addAttribute("teacherInfo", teacherModels);
        return "teacher/change";
    }

    @RequestMapping(path = "/teacherChangeSave")
    public String teacherChangeSave(@RequestParam(value = "pass", required = false) String pass, @RequestParam(value = "tel", required = false) String tel, @RequestParam(value = "uni", required = false) String uni, @RequestParam(value = "academy", required = false) String academy, HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        try {
            teacherService.updateTeacherInfo(pass, tel, uni, academy, cno);
            request.setAttribute("message", "更新成功");
            List<teacherModel> teacherModels = teacherService.getTeacherChangeInfo(cno);
            model.addAttribute("teacherInfo", teacherModels);
            return "teacher/change";
        }catch (Exception e){
            request.setAttribute("message", "更新失败");
            List<teacherModel> teacherModels = teacherService.getTeacherChangeInfo(cno);
            model.addAttribute("teacherInfo", teacherModels);
            return "teacher/change";
        }
    }

}
