package jplus.cherry.medicalservice.dao;

import java.util.List;
//fan 2015/7/30 大数据分页
public class Tieba {
	private int mySle;
	private String keyword;
    private List records;
    private int pagesize = 4;//每页显示的记录数
    private int pagenum;//用户要看的页码即当前页码
    private int totalpage;//总页数
    private int startIndex;//每页开始的索引
    private int totalrecords;//总记录条数
    
    
    private int startPage = 1;
    private int lastPage = 5;

    public int getMySle() {
		return mySle;
	}

	public void setMySle(int mySle) {
		this.mySle = mySle;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getLastPage() {
        return lastPage;
    }

    public void setLastPage(int lastPage) {
        this.lastPage = lastPage;
    }
    

    public Tieba(int pagenum, int totalrecords) {
        this.pagenum = pagenum;
        this.totalrecords = totalrecords;
        totalpage = totalrecords%pagesize==0?totalrecords/pagesize:(totalrecords/pagesize+1);
        startIndex = (pagenum-1)*pagesize;
        if((pagenum-2)<=0){
            startPage = 1;
            lastPage = 5<=totalpage?5:totalpage;
        }else if(pagenum+2>=totalpage){
            lastPage = totalpage;
            startPage = lastPage-4<=0?1:lastPage-4;
        }else{
            startPage = pagenum-2;
            lastPage = startPage+4;
        }        
    }
    
    public List getRecords() {
        return records;
    }

    public void setRecords(List records) {
        this.records = records;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getPagenum() {
        return pagenum;
    }

    public void setPagenum(int pagenum) {
        this.pagenum = pagenum;
    }

    public int getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(int totalpage) {
        this.totalpage = totalpage;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getTotalrecords() {
        return totalrecords;
    }

    public void setTotalrecords(int totalrecords) {
        this.totalrecords = totalrecords;
    }
}

