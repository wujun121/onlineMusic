package com.music.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.music.bean.Singer;
import com.music.service.SingerService;
import com.music.util.CommonUtil;

@Controller
@RequestMapping("/singer")
public class SingerController {
	
	Properties pro = new Properties();
	InputStream in = this.getClass().getClassLoader().getResourceAsStream("config.properties");
	
	@Autowired
	private SingerService singerService;
	
	@RequestMapping("/findSingerList")
	public String findSingerList(HttpSession session) {
		List<Singer> singerList = singerService.findSingerList();
		session.setAttribute("singerList", singerList);
		return "adminjsp/singer/adminSingerList";
	}
	
	@ResponseBody
	@RequestMapping("/deleteSinger")
	public boolean deleteSinger(int[] singerIds) {
		Boolean flag = singerService.deleteSinger(singerIds);
		singerService.setFlag(true);
		return flag;
	}
	
	@RequestMapping("/addSinger")
	public String addSinger(Singer singer,HttpServletRequest request,HttpSession session,
			@RequestParam MultipartFile file) {
		String name = CommonUtil.getUid()+"_"+file.getOriginalFilename();
		try {
			pro.load(in);
			String savePath = pro.getProperty("saveImgPath");
			File diskfile = new File(savePath, name);
			file.transferTo(diskfile);
			singer.setS_img(name);
			singerService.addSinger(singer);
		} catch (IOException e) {
			e.printStackTrace();
		}
		request.setAttribute("msg", "恭喜您，歌手"+singer.getName()+"新增成功!");
		return "adminjsp/singer/adminSingerList";
	}
	
	
}
