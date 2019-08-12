package com.KTP.dao;

import com.KTP.model.courseStudentNameModel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface courseStudentNameDao {

    //查询教师的上课学生
    @Select("select * from coursestudentname where cno = #{cno}")
    public List<courseStudentNameModel> getCourseStudentName(courseStudentNameModel courseStudentNameModel);

}
