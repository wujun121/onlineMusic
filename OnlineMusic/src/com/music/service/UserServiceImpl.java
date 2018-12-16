package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.bean.User;
import com.music.dao.UserDao;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public Integer checkUserExist(String username) {
		return userDao.checkUserExist(username);
	}

	@Override
	public User login(User user) {
		return userDao.login(user);
	}

}
