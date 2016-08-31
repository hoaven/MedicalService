package jplus.cherry.medicalservice.model;

import java.util.Date;

public class Tie {
    private Integer id;

    private String title;

    private Integer limits;

    private Integer authorid;
    
    private String name;
    
    private String kemu;

    private String content;

    private Date pubtime;

    private Boolean jiajing;

	private Boolean zhiding;
    
    private Integer ifpermit;
    
    private String dengji;

    private String beizhu;
   
    private Integer znumb;
    
    public Integer getZnumb() {
		return znumb;
	}

	public void setZnumb(Integer znumb) {
		this.znumb = znumb;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKemu() {
		return kemu;
	}

	public void setKemu(String kemu) {
		this.kemu = kemu;
	}

	public Integer getIfpermit() {
		return ifpermit;
	}

	public void setIfpermit(Integer ifpermit) {
		this.ifpermit = ifpermit;
	}

	public String getDengji() {
		return dengji;
	}

	public void setDengji(String dengji) {
		this.dengji = dengji;
	}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
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

    public Date getPubtime() {
        return pubtime;
    }

    public void setPubtime(Date pubtime) {
        this.pubtime = pubtime;
    }

    public Boolean getJiajing() {
        return jiajing;
    }

    public void setJiajing(Boolean jiajing) {
        this.jiajing = jiajing;
    }

    public Boolean getZhiding() {
        return zhiding;
    }

    public void setZhiding(Boolean zhiding) {
        this.zhiding = zhiding;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? null : beizhu.trim();
    }
}