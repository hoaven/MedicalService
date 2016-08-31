package jplus.cherry.medicalservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.DoctorMapper;
import jplus.cherry.medicalservice.model.Doctor;
import jplus.cherry.medicalservice.model.User;
import jplus.cherry.medicalservice.service.DoctorService;

@Service("doctorService")
public class DoctorServiceImpl implements DoctorService {
	private DoctorMapper doctorMapper;

	/**
	 * @return the doctorMapper
	 */
	public DoctorMapper getDoctorMapper() {
		return doctorMapper;
	}

	/**
	 * @param doctorMapper the doctorMapper to set
	 */
	@Autowired
	public void setDoctorMapper(DoctorMapper doctorMapper) {
		this.doctorMapper = doctorMapper;
	}

	@Override
	public Doctor find(String username) {
		// TODO Auto-generated method stub
		return doctorMapper.find(username);
	}

	@Override
	public int insert(Doctor record) {
		// TODO Auto-generated method stub
		return doctorMapper.insert(record);
	}

	@Override
	public Doctor selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return doctorMapper.selectByPrimaryKey(id);
	}

}
