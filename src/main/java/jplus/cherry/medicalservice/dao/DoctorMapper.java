package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Doctor;

public interface DoctorMapper {
    public int deleteByPrimaryKey(Integer id);

    public int insert(Doctor record);

    public int insertSelective(Doctor record);

    public Doctor selectByPrimaryKey(Integer id);
    
    public Doctor find(String username);

    public int updateByPrimaryKeySelective(Doctor record);

    public int updateByPrimaryKey(Doctor record);
    
    public List<Doctor> selectAll();
}