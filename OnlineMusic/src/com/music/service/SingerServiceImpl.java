package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.bean.Singer;
import com.music.dao.SingerDao;

@Service("singerService")
public class SingerServiceImpl implements SingerService{
	
	@Autowired
	private SingerDao singerDao;
	private boolean flag = true;
	
	@Override
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
	@Override
	public List<Singer> findSingerList() {
		return singerDao.findSingerList();
	}

	@Override
	public Boolean deleteSinger(int[] singerID) {
		try {
			singerDao.deleteSinger(singerID);
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}

	@Override
	public boolean addSinger(Singer singer) {
		try {
			singerDao.addSinger(singer);
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}
}
