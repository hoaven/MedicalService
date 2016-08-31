package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Zan;

public interface ZanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Zan record);

    int insertSelective(Zan record);

    Zan selectByPrimaryKey(Integer id);

    Zan selectcheck(Zan record);
    
    int updateByPrimaryKeySelective(Zan record);

    int updateByPrimaryKey(Zan record);
    
    List<Zan> selectAll();
}