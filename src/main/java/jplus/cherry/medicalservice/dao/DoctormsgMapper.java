package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Doctormsg;

public interface DoctormsgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Doctormsg record);

    int insertSelective(Doctormsg record);

    Doctormsg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Doctormsg record);

    int updateByPrimaryKey(Doctormsg record);
    
    List<Doctormsg> selectAll();
}