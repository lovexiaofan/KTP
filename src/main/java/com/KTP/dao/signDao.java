package com.KTP.dao;

import com.KTP.model.signModel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface signDao {

    //查询学生签到码
    @Select("select signcode from sign where courseno = #{courseno} and sno = #{sno}")
    public String getSignCode(signModel signModel);

    //更新学生签到
    @Update("update sign set signcode = '签到' where courseno = #{courseno} and sno = #{sno}")
    public void updateSignCode(signModel signModel);

    //输入学生签到码
    @Update("update sign set signcode = #{signcode} where courseno = #{courseno}")
    public void updateEnterSignCode(signModel signModel);

}
