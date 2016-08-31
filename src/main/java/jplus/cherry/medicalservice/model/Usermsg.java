package jplus.cherry.medicalservice.model;

import java.util.Date;

public class Usermsg {
    private Integer id;

    private Integer userid;

    private Byte isready;

    private String content;

    private Date sendtime;

    private Integer doctorid;

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

    public Byte getIsready() {
        return isready;
    }

    public void setIsready(Byte isready) {
        this.isready = isready;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Integer getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(Integer doctorid) {
        this.doctorid = doctorid;
    }
}