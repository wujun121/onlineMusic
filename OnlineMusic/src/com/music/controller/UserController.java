package com.music.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.bean.User;
import com.music.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/addUser.do")
	public String addUser(User user,HttpServletRequest request) {
		userService.addUser(user);
		request.setAttribute("registerOk", "registerOk");
		return "user/login";
	}
	
	@RequestMapping("/checkUserExist.do")
	@ResponseBody
	public String checkUserExist(String username) {
		boolean flag = false;
		String stringJson = null;
		int count = userService.checkUserExist(username);
		if(count == 0) {
			flag = true;
		}
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("valid", flag);
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			stringJson = objectMapper.writeValueAsString(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stringJson;
	}
	
	@RequestMapping("/login.do")
	public String login(User formUser,ModelMap map,HttpSession session) {
		User user = userService.login(formUser);
		if(user == null) {
			map.addAttribute("error", "账号或密码错误");
			return "user/login";
		}else {
			session.setAttribute("userSession", user);
		}
		return "redirect:/index.jsp";
		
	}
	
	@RequestMapping("/loginOut.do")
	public String loginOut(HttpSession session,HttpServletRequest request) {
		session.removeAttribute("userSession");
		request.setAttribute("loginOutOk", "注销成功");
		return "user/login";
	}
	
}
