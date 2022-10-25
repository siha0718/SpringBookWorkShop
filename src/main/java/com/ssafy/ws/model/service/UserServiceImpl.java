package com.ssafy.ws.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.ws.model.dao.UserDao;
import com.ssafy.ws.model.dto.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao dao;
	

	@Override
	public User searchById(User user) throws Exception {
		return dao.searchById(user);
	}

}
