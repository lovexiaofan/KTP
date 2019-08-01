package com.KTP.service.impl;

import com.KTP.dao.studentDao;
import com.KTP.model.studentModel;
import com.KTP.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("studentService")
public class studentServiceImpl implements studentService {

    private studentDao studentDao;
    @Autowired
    public void setStudentDao(studentDao studentDao){
        this.studentDao = studentDao;
    }

    public String getStudentPassword(studentModel studentModel){
        return studentDao.getStudentPassword(studentModel);
    }

}
