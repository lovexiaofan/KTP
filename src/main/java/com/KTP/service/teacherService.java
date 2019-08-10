package com.KTP.service;

import com.KTP.dao.teacherDao;
import com.KTP.model.teacherModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class teacherService {

    private teacherDao teacherDao;
    @Autowired
    public void setTeacherDao(teacherDao teacherDao){
        this.teacherDao = teacherDao;
    }

    //查询教师登录密码
    public String getTeacherPassword(String cno){
        teacherModel teacherModel = new teacherModel();
        teacherModel.setCno(cno);
        return teacherDao.getTeacherPassword(teacherModel);
    }

    //添加教师个人信息
    public void insertTeacherInfo(String cno, String cname, String password, String tel, String sex, String uni, String academy){
        teacherModel teacherModel = new teacherModel();
        teacherModel.setCno(cno);
        teacherModel.setCname(cname);
        teacherModel.setPassword(password);
        teacherModel.setTel(tel);
        teacherModel.setSex(sex);
        teacherModel.setUni(uni);
        teacherModel.setAcademy(academy);
        teacherDao.insertTeacherInfo(teacherModel);
    }

}
