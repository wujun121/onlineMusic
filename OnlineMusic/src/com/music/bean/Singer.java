package com.music.bean;

import java.io.Serializable;

public class Singer implements Serializable{
	 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;//歌手姓名
	private String s_img;//歌手图片
	private String birth;//出生日期
	private String star;//星座
	private String hobby;//爱好
	private String introduction;//介绍
	
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
	public String getS_img() {
		return s_img;
	}
	public void setS_img(String s_img) {
		this.s_img = s_img;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	

}
