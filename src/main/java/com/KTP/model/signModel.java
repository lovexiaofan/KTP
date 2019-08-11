package com.KTP.model;

import java.io.Serializable;

public class signModel implements Serializable {

    private String courseno;
    private String sno;
    private String signcode;

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getSigncode() {
        return signcode;
    }

    public void setSigncode(String signcode) {
        this.signcode = signcode;
    }

}
