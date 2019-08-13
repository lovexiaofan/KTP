package com.KTP.controller;

import com.KTP.service.courseService;
import com.KTP.service.courseStudentService;
import com.KTP.service.signService;
import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class studentQuitCourseController {

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    private courseStudentService courseStudentService;
    @Autowired
    public void setCourseStudentService(courseStudentService courseStudentService){
        this.courseStudentService = courseStudentService;
    }

    private signService signService;
    @Autowired
    public void setSignService(signService signService){
        this.signService = signService;
    }

    private courseService courseService;
    @Autowired
    public void setCourseService(courseService courseService){
        this.courseService = courseService;
    }

    @RequestMapping(path = "/studentQuitCourse")
    public String toStudentQuitCourse(HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        return "student/quitCourse";
    }

    @RequestMapping(path = "/studentQuitCourseSave")
    public String studentQuitCourseSave(HttpServletRequest request, Model model, @RequestParam("kh") String kh){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        String cno = courseService.getCourseCno(kh);
        String snocheck = courseStudentService.getCourseStudentCno(sno, kh);
        if (cno == null){
            request.setAttribute("message", "您输入的课程号不存在！");
        }
        else {
            if (snocheck != null){
                try {
                    courseStudentService.deleteCourseStudent(sno, kh);
                    signService.deleteSignStudent(kh, sno);
                    request.setAttribute("message", "退课成功！");
                }catch (Exception e){
                    request.setAttribute("message", "退课失败！");
                }
            }
            else {
                request.setAttribute("message", "您未加入该课程！");
            }
        }
        return "student/quitCourse";
    }

}
