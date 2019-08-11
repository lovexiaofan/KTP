package com.KTP.controller;

import com.KTP.service.courseService;
import com.KTP.service.signService;
import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class studentAdminController {

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

    private signService signService;
    @Autowired
    public void setSignService(signService signService){
        this.signService = signService;
    }

    @RequestMapping(path = "/studentAdmin")
    public String toStudentAdmin(HttpServletRequest request, Model model){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        return "student/admin";
    }

    @RequestMapping(path = "/studentSign")
    public String studentSign(HttpServletRequest request, Model model, @RequestParam("kh") String kh, @RequestParam("signcode") String signcode){
        String sno = (String)request.getSession().getAttribute("sno");
        String sname = studentService.getStudentAdminSname(sno);
        model.addAttribute("sname", sname);
        String cno = courseService.getCourseCno(kh);
        String code = signService.getSignCode(kh, sno);
        if (cno == null){
            request.setAttribute("message", "您输入的课程号不存在！");
        }
        else {
            if (code.equals("签到")){
                request.setAttribute("message", "您已经完成签到！");
            }
            else {
                if (signcode.equals(code)){
                    try {
                        signService.updateSignCode(kh, sno);
                        request.setAttribute("message", "签到成功！");
                    }catch (Exception e){
                        request.setAttribute("message", "签到失败！");
                    }
                }
                else {
                    request.setAttribute("message", "签到码错误！");
                }
            }
        }
        return "student/admin";
    }

}
