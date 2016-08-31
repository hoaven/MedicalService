package jplus.cherry.medicalservice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import jplus.cherry.medicalservice.model.Tie;

public interface TieMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tie record);

    int insertSelective(Tie record);

    Tie selectByPrimaryKey(Integer id);
    
    List<Tie> selectBybeizhu(String beizhu);//咨询专区的大数据分页
    
    List<Tie> selectBybeizhu1(@Param("beizhu")String beizhu, @Param("dengji")String dengji);
    
    int updateByPrimaryKeySelective(Tie record);

    int updateByPrimaryKey(Tie record);
    
    void updateznumb(Integer id);//自增赞的个数
    
    List<Tie> selectAll();
    
    List<Tie> selectfront();//选取前8热点话题
}