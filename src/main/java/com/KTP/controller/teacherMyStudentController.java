package com.KTP.controller;

import com.KTP.model.courseStudentNameModel;
import com.KTP.service.courseStudentNameService;
import com.KTP.service.teacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class teacherMyStudentController {

    private teacherService teacherService;
    @Autowired
    public void setTeacherService(teacherService teacherService){
        this.teacherService = teacherService;
    }

    private courseStudentNameService courseStudentNameService;
    @Autowired
    public void setCourseStudentNameService(courseStudentNameService courseStudentNameService){
        this.courseStudentNameService = courseStudentNameService;
    }

    @RequestMapping(path = "/teacherMyStudent")
    public String toTeacherMyStudent(HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        List<courseStudentNameModel> courseStudentNameModels = courseStudentNameService.getCourseStudentName(cno);
        model.addAttribute("myStudentInfo", courseStudentNameModels);
        return "teacher/myStudent";
    }

}
