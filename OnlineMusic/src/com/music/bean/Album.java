package com.music.bean;

public class Album {
	
	private int id;
	private String sid;//歌手id
	private String time;//发行日期
	private String a_img;//专辑图片
	private String introduction;//专辑介绍
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getA_img() {
		return a_img;
	}
	public void setA_img(String a_img) {
		this.a_img = a_img;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	
}
