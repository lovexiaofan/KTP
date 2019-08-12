package com.KTP.controller;

import com.KTP.model.signNameModel;
import com.KTP.service.signNameService;
import com.KTP.service.teacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class teacherSignStatusController {

    private teacherService teacherService;
    @Autowired
    public void setTeacherService(teacherService teacherService){
        this.teacherService = teacherService;
    }

    private signNameService signNameService;
    @Autowired
    public void setSignNameService(signNameService signNameService){
        this.signNameService = signNameService;
    }

    @RequestMapping(path = "/teacherSignStatus")
    public String toTeacherSignStatus(HttpServletRequest request, Model model){
        String cno = (String)request.getSession().getAttribute("cno");
        String cname = teacherService.getTeacherAdminCname(cno);
        model.addAttribute("cname", cname);
        List<signNameModel> signNameModels = signNameService.getSignName(cno);
        model.addAttribute("signInfo", signNameModels);
        for (signNameModel signNameModel : signNameModels) {
            String sign = signNameModel.getSigncode();
            if (!sign.equals("签到")) {
                sign = "未签";
                signNameModel.setSigncode(sign);
            }
        }
        return "teacher/signStatus";
    }

}
