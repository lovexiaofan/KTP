package com.KTP.dao;

import com.KTP.model.studentModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface studentDao {

    //查询学生登录密码
    @Select("select password from student where sno=#{sno}")
    public String getStudentPassword(studentModel studentModel);

    //添加学生个人信息
    @Insert("insert into student values(#{sno},#{sname},#{password},#{tel},#{sex},#{uni},#{academy})")
    public void insertStudentInfo(studentModel studentModel);

}
