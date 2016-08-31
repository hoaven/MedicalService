package jplus.cherry.medicalservice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jplus.cherry.medicalservice.dao.NewsMapper;
import jplus.cherry.medicalservice.dao.NewscategoryMapper;
import jplus.cherry.medicalservice.dao.UserMapper;
import jplus.cherry.medicalservice.model.News;
import jplus.cherry.medicalservice.model.Newscategory;
import jplus.cherry.medicalservice.model.User;
import jplus.cherry.medicalservice.service.HktryService;


@Service("hktryService")
public class HktryServiceImpl implements HktryService{
	private UserMapper userMapper;
	private NewscategoryMapper newscategoryMapper;
	private NewsMapper newsMapper;
	
	
	public NewscategoryMapper getNewscategoryMapper() {
		return newscategoryMapper;
	}
	@Autowired
	public void setNewscategoryMapper(NewscategoryMapper newscategoryMapper) {
		this.newscategoryMapper = newscategoryMapper;
	}
	public NewsMapper getNewsMapper() {
		return newsMapper;
	}
	@Autowired
	public void setNewsMapper(NewsMapper newsMapper) {
		this.newsMapper = newsMapper;
	}
	public UserMapper getUserMapper() {
		return userMapper;
	}
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	@Override
	public List<User> getAll() {
		return userMapper.selectAll();
	}
	@Override
	public List<Newscategory> findNewsCategory() {
		return newscategoryMapper.selectAll();
	}
	@Override
	public List<News> findNewsBysCategory(Integer ncid) {
		return newsMapper.findNewsBysCategory(ncid);
	}
}
