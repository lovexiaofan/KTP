package com.KTP.service;

import com.KTP.dao.courseStudentDao;
import com.KTP.model.courseStudentModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class courseStudentService {

    private courseStudentDao courseStudentDao;
    @Autowired
    public void setCourseStudentDao(courseStudentDao courseStudentDao){
        this.courseStudentDao = courseStudentDao;
    }

    //学生加入课程
    public void insertCourseStudent(String courseno, String cno, String sno){
        courseStudentModel courseStudentModel = new courseStudentModel();
        courseStudentModel.setCourseno(courseno);
        courseStudentModel.setCno(cno);
        courseStudentModel.setSno(sno);
        courseStudentDao.insertCourseStudent(courseStudentModel);
    }

    //验证学生加入课程的课程号
    public String getCourseStudentCno(String sno, String courseno){
        courseStudentModel courseStudentModel = new courseStudentModel();
        courseStudentModel.setSno(sno);
        courseStudentModel.setCourseno(courseno);
        return courseStudentDao.getCourseStudentCno(courseStudentModel);
    }

    //学生退出课程
    public void deleteCourseStudent(String sno, String courseno){
        courseStudentModel courseStudentModel = new courseStudentModel();
        courseStudentModel.setSno(sno);
        courseStudentModel.setCourseno(courseno);
        courseStudentDao.deleteCourseStudent(courseStudentModel);
    }

    //教师关闭课程
    public void deleteCourseStudentTeacher(String courseno){
        courseStudentModel courseStudentModel = new courseStudentModel();
        courseStudentModel.setCourseno(courseno);
        courseStudentDao.deleteCourseStudentTeacher(courseStudentModel);
    }

}
