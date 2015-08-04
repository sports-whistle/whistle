package com.whistle.web.vo;

import java.util.Date;

public class User {

	private int uid;
	private String pwd;
	private String name;
	private String email;
	private String kakaoId;
	private boolean isKakaoIdOpen;
	private Date birthday;
	private String preferringTeam;
	private String description;
	private Date regDate;
	private boolean isValid;
	
	
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	

	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKakaoId() {
		return kakaoId;
	}
	public void setKakaoId(String kakaoId) {
		this.kakaoId = kakaoId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isKakaoIdOpen() {
		return isKakaoIdOpen;
	}
	public void setKakaoIdOpen(boolean isKakaoIdOpen) {
		this.isKakaoIdOpen = isKakaoIdOpen;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPreferringTeam() {
		return preferringTeam;
	}
	public void setPreferringTeam(String preferringTeam) {
		this.preferringTeam = preferringTeam;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public boolean isValid() {
		return isValid;
	}
	public void setValid(boolean isValid) {
		this.isValid = isValid;
	}

	
	
	
	
}
