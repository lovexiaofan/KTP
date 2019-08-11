package com.KTP.dao;

import com.KTP.model.courseModel;
import com.KTP.model.studentModel;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface courseDao {

    //查询学生参加的课程信息
    @Select("select courseno, coursename, coursetime from course where courseno in (select courseno from coursestudent where sno = #{sno})")
    public List<courseModel> getCourseStudentInfo(studentModel studentModel);

    //根据课号查询教师编号
    @Select("select cno from course where courseno = #{courseno}")
    public String getCourseCno(courseModel courseModel);

    //查询教师开设的课程信息
    @Select("select courseno, coursename, coursetime from course where cno = #{cno}")
    public List<courseModel> getCourseTeacherInfo(courseModel courseModel);

    //新增教师课程
    @Insert("insert into course values (#{courseno}, #{coursename}, #{cno}, #{coursetime})")
    public void insertOpenCourse(courseModel courseModel);

    //删除教师课程
    @Delete("delete from course where courseno = #{courseno}")
    public void deleteCloseCourse(courseModel courseModel);

}
