package com.KTP.service;

import com.KTP.dao.signDao;
import com.KTP.model.signModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class signService {

    private signDao signDao;
    @Autowired
    public void setSignDao(signDao signDao){
        this.signDao = signDao;
    }

    //查询学生签到码
    public String getSignCode(String courseno, String sno){
        signModel signModel = new signModel();
        signModel.setCourseno(courseno);
        signModel.setSno(sno);
        return signDao.getSignCode(signModel);
    }

    //更新学生签到
    public void updateSignCode(String courseno, String sno){
        signModel signModel = new signModel();
        signModel.setCourseno(courseno);
        signModel.setSno(sno);
        signDao.updateSignCode(signModel);
    }

}
