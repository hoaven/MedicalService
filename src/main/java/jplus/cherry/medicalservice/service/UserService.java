package jplus.cherry.medicalservice.service;

import jplus.cherry.medicalservice.model.User;

public interface UserService {
	public User	find(String username);
	public void insert(User user);
	public User selectByPrimaryKey(int id);
}
