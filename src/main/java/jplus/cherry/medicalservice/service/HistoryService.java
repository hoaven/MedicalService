package jplus.cherry.medicalservice.service;

import jplus.cherry.medicalservice.model.History;

public interface HistoryService {
	public History selectByPrimaryKey(Integer id);
	
	public History selectByUserId(Integer id);
}
