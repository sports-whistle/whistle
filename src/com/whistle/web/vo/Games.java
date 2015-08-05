package com.whistle.web.vo;

import java.util.Date;

public class Games
{
	private String code; 
	private Date dateTime; 
	private String teamName1; 
	private String teamName2;
	private String stadiumsCode;

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	public String getTeamName1() {
		return teamName1;
	}
	public void setTeamName1(String teamName1) {
		this.teamName1 = teamName1;
	}
	public String getTeamName2() {
		return teamName2;
	}
	public void setTeamName2(String teamName2) {
		this.teamName2 = teamName2;
	}
	public String getStadiumsCode() {
		return stadiumsCode;
	}
	public void setStadiumsCode(String stadiumsCode) {
		this.stadiumsCode = stadiumsCode;
	} 
}
