package com.KTP.dao;

import com.KTP.model.teacherModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface teacherDao {

    //查询教师登录密码
    @Select("select password from teacher where cno = #{cno}")
    public String getTeacherPassword(teacherModel teacherModel);

    //添加教师个人信息
    @Insert("insert into teacher values(#{cno},#{cname},#{password},#{tel},#{sex},#{uni},#{academy})")
    public void insertTeacherInfo(teacherModel teacherModel);

    //查询教师个人主页姓名
    @Select("select cname from teacher where cno = #{cno}")
    public String getTeacherAdminCname(teacherModel teacherModel);

    //查询教师全部信息
    @Select("select * from teacher where cno = #{cno}")
    public List<teacherModel> getTeacherChangeInfo(teacherModel teacherModel);

    //更新教师信息
    @Update("update student set password = #{password}, tel = #{tel}, uni = #{uni}, academy = #{academy} where cno = #{cno}")
    public void updateTeacherInfo(teacherModel teacherModel);

}
