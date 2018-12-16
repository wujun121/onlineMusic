package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.bean.Admin;
import com.music.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public Admin login(Admin admin) {
		return adminDao.login(admin);
	}

}
