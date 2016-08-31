package jplus.cherry.medicalservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.DepartmentMapper;
import jplus.cherry.medicalservice.model.Department;
import jplus.cherry.medicalservice.service.DepartmentService;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {

	private DepartmentMapper departmentMapper;
	
	
	public DepartmentMapper getDepartmentMapper() {
		return departmentMapper;
	}

	@Autowired
	public void setDepartmentMapper(DepartmentMapper departmentMapper) {
		this.departmentMapper = departmentMapper;
	}


	@Override
	public Department selectByPrimaryKey(Integer id) {
		return departmentMapper.selectByPrimaryKey(id);
	}

}
