package com.KTP.controller;

import com.KTP.service.courseService;
import com.KTP.service.teacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class teacherOpenCourseController {

    private teacherService teacherService;
    @Autowired
    public void setTeacherService(teacherService teacherService){
        this.teacherService = teacherService;
    }

    private courseService courseService;
    @Autowired
    public void setCourseService(courseService courseService){
        this.courseService = courseService;
    }

    @RequestMapping(path = "/teacherOpenCourse")
    public String toTeacherOpenCourse(HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        return "teacher/openCourse";
    }

    @RequestMapping(path = "/teacherOpenCourseSave")
    public String teacherOpenCourseSave(HttpServletRequest request, Model model, @RequestParam("kh") String kh, @RequestParam("kcm") String kcm, @RequestParam("sksj") String sksj){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        String cnocheck = courseService.getCourseCno(kh);
        if (cnocheck != null){
            request.setAttribute("message", "课程号已存在！");
        }
        else {

        }
        return "teacher/openCourse";
    }

}
