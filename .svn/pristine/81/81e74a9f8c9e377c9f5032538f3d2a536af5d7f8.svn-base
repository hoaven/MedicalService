package jplus.cherry.medicalservice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import jplus.cherry.medicalservice.model.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    List<News> selectAll();

	List<News> findNewsBysCategory(@Param("ncid")Integer ncid);
}