package com.KTP.controller;

import com.KTP.model.courseModel;
import com.KTP.service.courseService;
import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class studentMyCourseController {

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    private courseService courseService;
    @Autowired
    public void setCourseService(courseService courseService){
        this.courseService = courseService;
    }

    @RequestMapping(path = "/studentMyCourse")
    public String toStudentMyCourse(HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        List<courseModel> courseModels = courseService.getCourseStudentInfo(sno);
        model.addAttribute("myCourseInfo", courseModels);
        return "student/myCourse";
    }

}
