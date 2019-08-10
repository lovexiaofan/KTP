package com.KTP.service;

import com.KTP.dao.studentDao;
import com.KTP.model.studentModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class studentService {

    private studentDao studentDao;
    @Autowired
    public void setStudentDao(studentDao studentDao){
        this.studentDao = studentDao;
    }

    //查询学生登录密码
    public String getStudentPassword(String sno){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        return studentDao.getStudentPassword(studentModel);
    }

    //添加学生个人信息
    public void insertStudentInfo(String sno, String sname, String password, String tel, String sex, String uni, String academy){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        studentModel.setSname(sname);
        studentModel.setPassword(password);
        studentModel.setTel(tel);
        studentModel.setSex(sex);
        studentModel.setUni(uni);
        studentModel.setAcademy(academy);
        studentDao.insertStudentInfo(studentModel);
    }

    //查询学生个人主页姓名
    public String getStudentAdminSname(String sno){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        return studentDao.getStudentAdminSname(studentModel);
    }

    //查询学生全部信息
    public List<studentModel> getStudentChangeInfo(String sno){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        return studentDao.getStudentChangeInfo(studentModel);
    }

    //更新学生信息
    public void updateStudentInfo(String password, String tel, String uni, String academy, String sno){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        studentModel.setPassword(password);
        studentModel.setTel(tel);
        studentModel.setUni(uni);
        studentModel.setAcademy(academy);
        studentDao.updateStudentInfo(studentModel);
    }

}
