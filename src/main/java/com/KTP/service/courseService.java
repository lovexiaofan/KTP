package com.KTP.service;

import com.KTP.dao.courseDao;
import com.KTP.model.courseModel;
import com.KTP.model.studentModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class courseService {

    private courseDao courseDao;
    @Autowired
    public void setCourseDao(courseDao courseDao){
        this.courseDao = courseDao;
    }

    //查询学生参加的课程信息
    public List<courseModel> getCourseStudentInfo(String sno){
        studentModel studentModel = new studentModel();
        studentModel.setSno(sno);
        return courseDao.getCourseStudentInfo(studentModel);
    }

    //根据课号查询教师编号
    public String getCourseCno(String courseno){
        courseModel courseModel = new courseModel();
        courseModel.setCourseno(courseno);
        return courseDao.getCourseCno(courseModel);
    }

    //查询教师开设的课程信息
    public List<courseModel> getCourseTeacherInfo(String cno){
        courseModel courseModel = new courseModel();
        courseModel.setCno(cno);
        return courseDao.getCourseTeacherInfo(courseModel);
    }

    //新增教师课程
    public void insertOpenCourse(String courseno, String coursename, String cno, String coursetime){
        courseModel courseModel = new courseModel();
        courseModel.setCourseno(courseno);
        courseModel.setCoursename(coursename);
        courseModel.setCno(cno);
        courseModel.setCoursetime(coursetime);
        courseDao.insertOpenCourse(courseModel);
    }

    //删除教师课程
    public void deleteCloseCourse(String courseno){
        courseModel courseModel = new courseModel();
        courseModel.setCourseno(courseno);
        courseDao.deleteCloseCourse(courseModel);
    }

}
