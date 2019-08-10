package com.KTP.controller;

import com.KTP.service.studentService;
import com.KTP.service.teacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;

@Controller
public class loginOrRegisterController {

    private studentService studentService;
    @Autowired
    public void setStudentService(studentService studentService){
        this.studentService = studentService;
    }

    private teacherService teacherService;
    @Autowired
    public void setTeacherService(teacherService teacherService){
        this.teacherService = teacherService;
    }

    @RequestMapping(path = "/lr")
    public String toLoginOrRegister(){
        return "admin/loginOrRegister";
    }

    @RequestMapping(path = "/loginOrRegister")
    public String LoginOrRegister(@RequestParam(value = "choose", required = false) String cho, @RequestParam("lr") String lr, HttpServletRequest request){
        if ("登录".equals(lr)){
            String no = request.getParameter("no");
            String pass = request.getParameter("password");
            if("tea".equals(cho)){
                try{
                    String password = teacherService.getTeacherPassword(no);
                    if (password.equals("")){
                        request.setAttribute("message","用户名不存在！");
                        return "admin/loginOrRegister";
                    }
                    if (pass.equals(password)){
                        request.getSession().setAttribute("cno", no);
                        return "redirect:/teacherAdmin";
                    }
                    else {
                        request.setAttribute("message","用户名或密码错误！");
                        return "admin/loginOrRegister";
                    }
                }catch(Exception e){
                    request.setAttribute("message","用户名不存在！");
                    return "admin/loginOrRegister";
                }
            }
            else if("stu".equals(cho)){
                try{
                    String password = studentService.getStudentPassword(no);
                    if (password.equals("")){
                        request.setAttribute("message","用户名不存在！");
                        return "admin/loginOrRegister";
                    }
                    if (pass.equals(password)){
                        request.getSession().setAttribute("sno", no);
                        return "redirect:/studentAdmin";
                    }
                    else {
                        request.setAttribute("message","用户名或密码错误！");
                        return "admin/loginOrRegister";
                    }
                }catch(Exception e){
                    request.setAttribute("message","用户名不存在！");
                    return "admin/loginOrRegister";
                }
            }
            else {
                request.setAttribute("message","请选择身份！");
                return "admin/loginOrRegister";
            }
        }
        if("同意协议并注册".equals(lr))
        {
            String rno=request.getParameter("user");
            String rname=request.getParameter("name");
            String rpass=request.getParameter("passwd");
            String rschool=request.getParameter("school");
            String racademy=request.getParameter("academy");
            String rtel=request.getParameter("tel");
            String rsex=request.getParameter("sex");
            if (rsex.equals("male")){
                rsex = "男";
            }
            else {
                rsex = "女";
            }
            if("tea".equals(cho))
            {
                try{
                    teacherService.insertTeacherInfo(rno, rname, rpass, rtel, rsex, rschool, racademy);
                    request.getSession().setAttribute("cno", rno);
                    return "redirect:/teacherAdmin";
                }
                catch(Exception e){
                    request.setAttribute("message","用户名已存在！");
                    return "admin/loginOrRegister";
                }
            }
            else if("stu".equals(cho))
            {
                try{
                    studentService.insertStudentInfo(rno, rname, rpass, rtel, rsex, rschool, racademy);
                    request.getSession().setAttribute("sno", rno);
                    return "redirect:/studentAdmin";
                }
                catch(Exception e){
                    request.setAttribute("message","用户名已存在！");
                    return "admin/loginOrRegister";
                }
            }
            else {
                request.setAttribute("message","请选择身份！");
                return "admin/loginOrRegister";
            }
        }
        return "admin/loginOrRegister";
    }

}
