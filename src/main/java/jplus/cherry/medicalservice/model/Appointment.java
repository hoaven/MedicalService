package jplus.cherry.medicalservice.model;

import java.util.Date;

public class Appointment {
    private Integer id;

    private Integer userid;

    private Integer doctorid;

    private String apinumber;

    private String apitime;

    private Integer apidepartment;

    private String content;

    private Date regtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(Integer doctorid) {
        this.doctorid = doctorid;
    }

    public String getApinumber() {
        return apinumber;
    }

    public void setApinumber(String apinumber) {
        this.apinumber = apinumber == null ? null : apinumber.trim();
    }

    public String getApitime() {
        return apitime;
    }

    public void setApitime(String apitime) {
        this.apitime = apitime == null ? null : apitime.trim();
    }

    public Integer getApidepartment() {
        return apidepartment;
    }

    public void setApidepartment(Integer apidepartment) {
        this.apidepartment = apidepartment;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getRegtime() {
        return regtime;
    }

    public void setRegtime(Date regtime) {
        this.regtime = regtime;
    }
}