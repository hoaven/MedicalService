package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Staticres;

public interface StaticresMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Staticres record);

    int insertSelective(Staticres record);

    Staticres selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Staticres record);

    int updateByPrimaryKey(Staticres record);
    
    List<Staticres> selectAll();
}