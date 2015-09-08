package com.whistle.web.vo;

import java.util.Date;

public class BulletinBoardComments {

	String code; 
	String title; 
	Date regDate; 
	String bulletinCode;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getBulletinCode() {
		return bulletinCode;
	}
	public void setBulletinCode(String bulletinCode) {
		this.bulletinCode = bulletinCode;
	} 
	
	
	
}
