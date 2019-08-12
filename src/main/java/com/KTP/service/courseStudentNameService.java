package com.KTP.service;

import com.KTP.dao.courseStudentNameDao;
import com.KTP.model.courseStudentNameModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class courseStudentNameService {

    private courseStudentNameDao courseStudentNameDao;
    @Autowired
    private void setCourseStudentNameDao(courseStudentNameDao courseStudentNameDao){
        this.courseStudentNameDao = courseStudentNameDao;
    }

    //查询教师的上课学生
    public List<courseStudentNameModel> getCourseStudentName(String cno){
        courseStudentNameModel courseStudentNameModel = new courseStudentNameModel();
        courseStudentNameModel.setCno(cno);
        return courseStudentNameDao.getCourseStudentName(courseStudentNameModel);
    }

}
