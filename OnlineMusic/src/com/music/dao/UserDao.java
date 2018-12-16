package com.music.dao;

import org.springframework.stereotype.Repository;

import com.music.bean.User;

@Repository
public interface UserDao {
	
	public void addUser(User user);
	public int checkUserExist(String username);
	public User login(User user);
}
