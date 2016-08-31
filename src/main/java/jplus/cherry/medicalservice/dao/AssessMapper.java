package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Assess;

public interface AssessMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Assess record);

    int insertSelective(Assess record);

    Assess selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Assess record);

    int updateByPrimaryKey(Assess record);
    
    List<Assess> selectAll();
}