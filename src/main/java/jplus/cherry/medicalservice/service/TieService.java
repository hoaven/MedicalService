package jplus.cherry.medicalservice.service;

import java.util.List;

import jplus.cherry.medicalservice.dao.Tieba;
import jplus.cherry.medicalservice.model.Department;
import jplus.cherry.medicalservice.model.Tie;

public interface TieService {

    int insert(Tie record);
    
    int insertSelective(Tie record);

    Department selcetreturnid(String name);
    
    Tie selectByPrimaryKey(Integer id);
    
	Tieba getpagesizeTiezi(String pt, String id, String kk);

	Tieba gethuitie(String pt, Integer id);
	
	void updateznumb(Integer id);
	
	 List<Tie> selectfront();
}
