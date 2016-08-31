package jplus.cherry.medicalservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.HistoryMapper;
import jplus.cherry.medicalservice.model.History;
import jplus.cherry.medicalservice.service.HistoryService;

@Service("historyService")
public class HistoryServiceImpl implements HistoryService{

	private HistoryMapper historyMapper;
	
	public HistoryMapper getHistoryMapper() {
		return historyMapper;
	}

	@Autowired
	public void setHistoryMapper(HistoryMapper historyMapper) {
		this.historyMapper = historyMapper;
	}

	@Override
	public History selectByPrimaryKey(Integer id) {
		return historyMapper.selectByPrimaryKey(id);
	}

	@Override
	public History selectByUserId(Integer id) {
		return historyMapper.selectByUserId(id);
	}
	
}
