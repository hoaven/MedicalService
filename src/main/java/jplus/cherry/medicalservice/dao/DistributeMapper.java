package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Distribute;

public interface DistributeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Distribute record);

    int insertSelective(Distribute record);

    Distribute selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Distribute record);

    int updateByPrimaryKey(Distribute record);
    
    List<Distribute> selectAll();
}