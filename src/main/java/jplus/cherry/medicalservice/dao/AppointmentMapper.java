package jplus.cherry.medicalservice.dao;

import java.util.List;

import jplus.cherry.medicalservice.model.Appointment;

public interface AppointmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Appointment record);

    int insertSelective(Appointment record);

    Appointment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Appointment record);

    int updateByPrimaryKey(Appointment record);
    
    List<Appointment> selectAll();
}