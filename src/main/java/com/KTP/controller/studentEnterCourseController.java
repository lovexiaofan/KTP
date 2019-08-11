package com.KTP.controller;

import com.KTP.service.courseService;
import com.KTP.service.courseStudentService;
import com.KTP.service.studentService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class studentEnterCourseController {

    private courseService courseService;
    @Autowired
    public void setCourseService(courseService courseService){
        this.courseService = courseService;
    }

    private courseStudentService courseStudentService;
    @Autowired
    public void setCourseStudentService(courseStudentService courseStudentService){
        this.courseStudentService = courseStudentService;
    }

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    @RequestMapping(path = "/studentEnterCourse")
    public String toStudentEnterCourse(HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        return "student/enterCourse";
    }

    @RequestMapping(path = "/studentEnterCourseSave")
    public String studentEnterCourseSave(@RequestParam("kh") String kh, HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        String cno = courseService.getCourseCno(kh);
        if (cno == null){
            request.setAttribute("message", "您输入的课程号不存在！");
        }
        else {
            try {
                courseStudentService.insertCourseStudent(kh, cno, sno);
                request.setAttribute("message", "加入成功！");
            }catch (Exception e){
                request.setAttribute("message", "您已经添加该课程！");
            }
        }
        return "student/enterCourse";
    }

}
