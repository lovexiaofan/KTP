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
public class teacherCloseCourseController {

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

    @RequestMapping(path = "/teacherCloseCourse")
    public String toTeacherCloseCourse(HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        return "teacher/closeCourse";
    }

    @RequestMapping(path = "/teacherCloseCourseSave")
    public String teacherCloseCourseSave(HttpServletRequest request, Model model, @RequestParam("kh") String kh){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        String cnocheck = courseService.getCourseCno(kh);
        if (cnocheck == null){
            request.setAttribute("message", "课程号不存在！");
        }
        else {
            if (!cnocheck.equals(cno)){
                request.setAttribute("message", "您输入的课程号有误！");
            }
            else {
                courseService.deleteCloseCourse(kh);
                request.setAttribute("message", "成功关闭课程！");
            }
        }
        return "teacher/closeCourse";
    }

}
