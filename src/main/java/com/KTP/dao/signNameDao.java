package com.KTP.dao;

import com.KTP.model.courseModel;
import com.KTP.model.signNameModel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface signNameDao {

    //查询学生签到情况
    @Select("select * from signname where courseno in (select courseno from course where cno = #{cno})")
    public List<signNameModel> getSignName(courseModel courseModel);

}
