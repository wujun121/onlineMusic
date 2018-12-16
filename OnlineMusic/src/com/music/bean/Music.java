package com.music.bean;

public class Music {
	
	private int id;
	private String name;//歌曲名
	private String aid;//属于的专辑编号
	private String time;//歌曲时长
	private String lyrics;//歌词
	private String m_img;//歌曲图片
	private String filepath;//歌词文件
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLyrics() {
		return lyrics;
	}
	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	public String getM_img() {
		return m_img;
	}
	public void setM_img(String m_img) {
		this.m_img = m_img;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	
	
}
