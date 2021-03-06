package jplus.cherry.medicalservice.model;

import java.util.Date;

public class Regist {
    private Integer id;

    private String ghnumber;

    private Date ghtime;

    private Integer userid;

    private Integer doctorid;

    private Integer ksid;

    private String content;

    private String descriptions;

    private String cureprocess;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGhnumber() {
        return ghnumber;
    }

    public void setGhnumber(String ghnumber) {
        this.ghnumber = ghnumber == null ? null : ghnumber.trim();
    }

    public Date getGhtime() {
        return ghtime;
    }

    public void setGhtime(Date ghtime) {
        this.ghtime = ghtime;
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

    public Integer getKsid() {
        return ksid;
    }

    public void setKsid(Integer ksid) {
        this.ksid = ksid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions == null ? null : descriptions.trim();
    }

    public String getCureprocess() {
        return cureprocess;
    }

    public void setCureprocess(String cureprocess) {
        this.cureprocess = cureprocess == null ? null : cureprocess.trim();
    }

	@Override
	public String toString() {
		return "Regist [id=" + id + ", ghnumber=" + ghnumber + ", ghtime=" + ghtime + ", userid=" + userid
				+ ", doctorid=" + doctorid + ", ksid=" + ksid + ", content=" + content + ", descriptions="
				+ descriptions + ", cureprocess=" + cureprocess + "]";
	}
    
}