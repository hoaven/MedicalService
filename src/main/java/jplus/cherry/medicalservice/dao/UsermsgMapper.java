package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Usermsg;

public interface UsermsgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Usermsg record);

    int insertSelective(Usermsg record);

    Usermsg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Usermsg record);

    int updateByPrimaryKey(Usermsg record);
    
    List<Usermsg> selectAll();
}