package com.KTP.dao;

import com.KTP.model.teacherModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface teacherDao {

    //查询教师登录密码
    @Select("select password from teacher where cno = #{cno}")
    public String getTeacherPassword(teacherModel teacherModel);

    //添加教师个人信息
    @Insert("insert into teacher values(#{cno},#{cname},#{password},#{tel},#{sex},#{uni},#{academy})")
    public void insertTeacherInfo(teacherModel teacherModel);

}
