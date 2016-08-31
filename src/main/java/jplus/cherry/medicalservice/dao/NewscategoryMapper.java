package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Newscategory;

public interface NewscategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Newscategory record);

    int insertSelective(Newscategory record);

    Newscategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Newscategory record);

    int updateByPrimaryKey(Newscategory record);
    
    List<Newscategory> selectAll();
}