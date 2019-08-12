package com.KTP.model;

import java.io.Serializable;

public class courseStudentNameModel implements Serializable {

    private String courseno;
    private String cno;
    private String sname;

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

}
