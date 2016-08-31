package jplus.cherry.medicalservice.service.impl;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.AnswertieMapper;
import jplus.cherry.medicalservice.dao.DepartmentMapper;
import jplus.cherry.medicalservice.dao.TieMapper;
import jplus.cherry.medicalservice.dao.Tieba;
import jplus.cherry.medicalservice.model.Answertie;
import jplus.cherry.medicalservice.model.Department;
import jplus.cherry.medicalservice.model.Tie;
import jplus.cherry.medicalservice.service.TieService;
@Service("tieServiceImpl")
public class TieServiceImpl implements TieService {
	private TieMapper tiemapper;
	private DepartmentMapper departmentMapper;
	private AnswertieMapper answertieMapper;
	/**
	 * @return the setTiemapper
	 */
	public TieMapper getTiemapper() {
		return tiemapper;
	}

	public AnswertieMapper getAnswertieMapper() {
		return answertieMapper;
	}
	@Autowired
	public void setAnswertieMapper(AnswertieMapper answertieMapper) {
		this.answertieMapper = answertieMapper;
	}

	public DepartmentMapper getDepartmentMapper() {
		return departmentMapper;
	}
	@Autowired
	public void setDepartmentMapper(DepartmentMapper departmentMapper) {
		this.departmentMapper = departmentMapper;
	}

	/**
	 *  @param tieMapper the tieMapper to set
	 */
	@Autowired
	public void setTiemapper(TieMapper tiemapper) {
		this.tiemapper = tiemapper;
	}


	@Override
	public int insert(Tie record) {
		// TODO Auto-generated method stub
		return tiemapper.insert(record);
	}


	@Override
	public int insertSelective(Tie record) {
		// TODO Auto-generated method stub
		return tiemapper.insertSelective(record);
	}
	
	@Override
	public Tieba getpagesizeTiezi(String pt, String id, String kk) {
		 int num = 1;
		 int sb = 0;
         if(pt!=null&&!"".equals(pt.trim()))
             num = Integer.parseInt(pt);
         List<Tie> s = selectAllByrid(id, kk);
         int ss = s.size();
         Collections.reverse(s);
         Tieba pg = new Tieba(num, ss);
         System.out.println(ss+"---impl");
         System.out.println(pg.getStartIndex()+"---impl");
         if(pg.getStartIndex()+pg.getPagesize()>ss){
        	 sb = ss;
         }else{
        	 sb = pg.getStartIndex()+pg.getPagesize();
         }
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
         List<Tie> person = s.subList(pg.getStartIndex(), sb);
         pg.setRecords(person);
         return pg;

	}
	
	public List<Tie> selectAllByrid(String id, String s) {
		System.out.println(id+"----");
		System.out.println(s+"----");
	//	System.out.println(s+"----");
		
		if(s == null){
		return tiemapper.selectBybeizhu(id);
		}else{
			Tie jb = new Tie();
			jb.setBeizhu(id);
			jb.setDengji(s);
			return tiemapper.selectBybeizhu1(id, s);
		}
	}
	
	@Override
	public Tieba gethuitie(String pt, Integer id) {
		 int num = 1;
		 int sb = 0;
         List<Answertie> s = answertieMapper.selectBytieid(id);
         int ss = s.size();
         Collections.reverse(s);
         if(pt!=null&&!"".equals(pt.trim()))
             num = Integer.parseInt(pt);
         Tieba pg = new Tieba(num, ss);
         System.out.println(ss+"---impl");
         System.out.println(pg.getStartIndex()+"---impl");
         if(pg.getStartIndex()+pg.getPagesize()>ss){
        	 sb = ss;
         }else{
        	 sb = pg.getStartIndex()+pg.getPagesize();
         }
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
         List<Answertie> person = s.subList(pg.getStartIndex(), sb);
         pg.setRecords(person);
         return pg;

	}
	@Override
	public Department selcetreturnid(String name) {
		// TODO Auto-generated method stub
		return departmentMapper.selectByname(name);
	}

	@Override
	public Tie selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return tiemapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateznumb(Integer id) {
		// TODO Auto-generated method stub
		tiemapper.updateznumb(id);
	}

	@Override
	public List<Tie> selectfront() {
		// TODO Auto-generated method stub
		return tiemapper.selectfront();
	}

}
