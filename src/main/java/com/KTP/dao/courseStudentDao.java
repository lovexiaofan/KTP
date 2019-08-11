package com.KTP.dao;

import com.KTP.model.courseStudentModel;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface courseStudentDao {

    //学生加入课程
    @Insert("insert into coursestudent values (#{courseno}, #{cno}, #{sno})")
    public void insertCourseStudent(courseStudentModel courseStudentModel);

    //验证学生加入课程的课程号
    @Select("select cno from coursestudent where sno = #{sno} and courseno = #{courseno}")
    public String getCourseStudentCno(courseStudentModel courseStudentModel);

    //学生退出课程
    @Delete("delete from coursestudent where sno = #{sno} and courseno = #{courseno}")
    public void deleteCourseStudent(courseStudentModel courseStudentModel);

}
