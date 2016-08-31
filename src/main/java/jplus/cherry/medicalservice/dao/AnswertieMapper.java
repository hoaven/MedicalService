package jplus.cherry.medicalservice.dao;


import java.util.List;

import jplus.cherry.medicalservice.model.Answertie;

public interface AnswertieMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Answertie record);

    int insertSelective(Answertie record);

    Answertie selectByPrimaryKey(Integer id);
    
    List<Answertie> selectBytieid(Integer tieid);

    int updateByPrimaryKeySelective(Answertie record);

    int updateByPrimaryKey(Answertie record);
    
    List<Answertie> selectAll();
}