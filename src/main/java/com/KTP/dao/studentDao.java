package com.KTP.dao;

import com.KTP.model.studentModel;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface studentDao {

    //查询学生登陆密码
    @Select("select password from student where sno=#{sno}")
    public String getStudentPassword(studentModel studentModel);

}
