package com.music.service;

import com.music.bean.User;

public interface UserService {
	public void addUser(User user);

	public Integer checkUserExist(String username);

	public User login(User user);
}
