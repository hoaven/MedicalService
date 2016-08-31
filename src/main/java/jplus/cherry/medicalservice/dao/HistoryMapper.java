package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.History;

public interface HistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(History record);

    int insertSelective(History record);

    History selectByPrimaryKey(Integer id);
    
    History selectByUserId(Integer id);

    int updateByPrimaryKeySelective(History record);

    int updateByPrimaryKey(History record);
    
    List<History> selectAll();
}