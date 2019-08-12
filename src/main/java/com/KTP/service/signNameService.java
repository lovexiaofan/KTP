package com.KTP.service;

import com.KTP.dao.signNameDao;
import com.KTP.model.courseModel;
import com.KTP.model.signNameModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class signNameService {

    private signNameDao signNameDao;
    @Autowired
    public void setSignNameDao(signNameDao signNameDao){
        this.signNameDao = signNameDao;
    }

    //查询学生签到情况
    public List<signNameModel> getSignName(String cno){
        courseModel courseModel = new courseModel();
        courseModel.setCno(cno);
        return signNameDao.getSignName(courseModel);
    }

}
