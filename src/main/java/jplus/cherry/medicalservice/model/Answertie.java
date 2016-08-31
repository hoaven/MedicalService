package jplus.cherry.medicalservice.model;

import java.util.Date;

public class Answertie {
    private Integer id;

    private Integer tieid;

    private Integer limits;

    private Integer authorid;

    private String content;

    private Date relaytime;

    private String beizhu;

	private String name;
    
	 public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTieid() {
        return tieid;
    }

    public void setTieid(Integer tieid) {
        this.tieid = tieid;
    }

    public Integer getLimits() {
        return limits;
    }

    public void setLimits(Integer limits) {
        this.limits = limits;
    }

    public Integer getAuthorid() {
        return authorid;
    }

    public void setAuthorid(Integer authorid) {
        this.authorid = authorid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getRelaytime() {
        return relaytime;
    }

    public void setRelaytime(Date relaytime) {
        this.relaytime = relaytime;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? null : beizhu.trim();
    }
}