package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.User;

public interface UserDao {
	//public List<User> getUsersByColumn(String column, String value);
	public User getUserByName(String Name);
	public User getUserByEmail(String email);
	public User getUserByUid(String uid);
	
	
	public List<User> getUsers();
	
	
	
	public int regUser(User newUser);
	public int dropUser(User dUser);
	
	
	
}
