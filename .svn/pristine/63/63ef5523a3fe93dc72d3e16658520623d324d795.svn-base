package jplus.cherry.medicalservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.RegistMapper;
import jplus.cherry.medicalservice.model.Regist;
import jplus.cherry.medicalservice.service.RegistService;

@Service("registService")
public class RegistServiceImpl implements RegistService {

	private RegistMapper registmapper;
	
	
	public RegistMapper getRegistmapper() {
		return registmapper;
	}

	@Autowired
	public void setRegistmapper(RegistMapper registmapper) {
		this.registmapper = registmapper;
	}


	@Override
	public Regist getRegistByGhnum(String ghnumber) {
		return registmapper.selectByGhnum(ghnumber);
	}

}
