package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Regist;

public interface RegistMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Regist record);

    int insertSelective(Regist record);

    Regist selectByPrimaryKey(Integer id);
    
    Regist selectByGhnum(String ghnumber);

    int updateByPrimaryKeySelective(Regist record);

    int updateByPrimaryKey(Regist record);
    
    List<Regist> selectAll();
}