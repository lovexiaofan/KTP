package com.KTP.dao;

import com.KTP.model.studentModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface studentDao {

    //查询学生登录密码
    @Select("select password from student where sno=#{sno}")
    public String getStudentPassword(studentModel studentModel);

    //添加学生个人信息
    @Insert("insert into student values(#{sno},#{sname},#{password},#{tel},#{sex},#{uni},#{academy})")
    public void insertStudentInfo(studentModel studentModel);

    //查询学生个人主页姓名
    @Select("select sname from student where sno = #{sno}")
    public String getStudentAdminSname(studentModel studentModel);

    //查询学生全部信息
    @Select("select * from student where sno = #{sno}")
    public List<studentModel> getStudentChangeInfo(studentModel studentModel);

    //更新学生信息
    @Update("update student set password = #{password}, tel = #{tel}, uni = #{uni}, academy = #{academy} where sno = #{sno}")
    public void updateStudentInfo(studentModel studentModel);

}
