package com.music.service;

import java.util.List;

import com.music.bean.Singer;

public interface SingerService {
	public List<Singer> findSingerList();
	void setFlag(boolean flag);
	public Boolean deleteSinger(int[] singerID);
	public boolean addSinger(Singer singer);
}
