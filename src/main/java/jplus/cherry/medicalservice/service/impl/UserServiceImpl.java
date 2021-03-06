package jplus.cherry.medicalservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.UserMapper;
import jplus.cherry.medicalservice.model.User;
import jplus.cherry.medicalservice.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	private UserMapper	userMapper;
	
	/**
	 * @return the userMapper
	 */
	public UserMapper getUserMapper() {
		return userMapper;
	}

	/**
	 * @param userMapper the userMapper to set
	 */
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public User find(String username) {
		return userMapper.find(username);
	}

	@Override
	public void insert(User user) {
		userMapper.insert(user);
	}

	@Override
	public User selectByPrimaryKey(int id) {
		return userMapper.selectByPrimaryKey(id);
	}


}
