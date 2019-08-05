package com.KTP.service;

import com.KTP.dao.studentDao;
import com.KTP.model.studentModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class studentService {

    private studentDao studentDao;
    @Autowired
    public void setStudentDao(studentDao studentDao){
        this.studentDao = studentDao;
    }

    //查询学生登陆密码
    public String getStudentPassword(String sno){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        return studentDao.getStudentPassword(studentModel);
    }

}
