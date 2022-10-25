package com.ssafy.ws.model.dao;


import com.ssafy.ws.model.dto.User;

public interface UserDao {
	
	public User searchById(User user) throws Exception;

}
