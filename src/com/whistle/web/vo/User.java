package com.whistle.web.vo;

import java.util.Date;

public class User {

	private int uid;
	private String pwd;
	private String rePwd; 
	private String name;
	private String email;
	private String kakaoId;
	private boolean isKakaoIdOpen;
	private Date birthday;
	private String preferringTeam;
	private String description;
	private Date regDate;
	private boolean isValid;
	private String address;
	private String phone; 
	private String myTeam; 
	private String identification;
	private String defaultRole;
	
	public String getDefaultRole() {
		return defaultRole;
	}
	public void setDefaultRole(String defaultRole) {
		this.defaultRole = defaultRole;
	}
	public String getIdentification() {
		return identification;
	}
	public void setIdentification(String identification) {
		this.identification = identification;
	}
	public String getRePwd() {
		return rePwd;
	}
	public void setRePwd(String rePwd) {
		this.rePwd = rePwd;
	}
	public String getMyTeam() {
		return myTeam;
	}
	public void setMyTeam(String myTeam) {
		this.myTeam = myTeam;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
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
