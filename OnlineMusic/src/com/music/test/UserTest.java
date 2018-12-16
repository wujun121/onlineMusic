package com.music.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.music.bean.User;
import com.music.dao.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-*.xml"})
public class UserTest {
	@Autowired
	private UserDao userDao;
	@Test
	public void testAddUser(){
		User user = new User();
		user.setUsername("wwwwwww");
		user.setPassword("123456");
		user.setEmail("777777@qq.com");
		userDao.addUser(user);
	}
	
}
