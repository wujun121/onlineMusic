package com.music.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.bean.Admin;
import com.music.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/login.do")
	public String login(Admin formAdmin,ModelMap map,HttpSession session) {
		Admin admin = adminService.login(formAdmin);
		if(admin == null) {
			map.addAttribute("error", "账号或密码错误");
			return "adminjsp/adminLogin";
		}else {
			if(session != null) {
				session.removeAttribute("userSession");
			}
			session.setAttribute("adminSession", admin);
		}
		return "redirect:/index.jsp";
		
	}
	
	/*@RequestMapping("/loginOut.do")
	public String loginOut(HttpSession session,HttpServletRequest request) {
		session.removeAttribute("userSession");
		request.setAttribute("loginOutOk", "注销成功");
		return "user/login";
	}*/
	
}
