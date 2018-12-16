package com.music.dao;

import java.util.List;

import com.music.bean.Singer;

public interface SingerDao {

	public List<Singer> findSingerList();
	public void deleteSinger(int[] singerID);
	public void addSinger(Singer singer);

}
