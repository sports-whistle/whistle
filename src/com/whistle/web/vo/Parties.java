package com.whistle.web.vo;

import java.util.Date;

public class Parties 
{
	private String partyId; 
	private String partyManager; 
	private String zone;
	private Date date; 
	private int maxParticipants;
	private Date deadLine; 
	private boolean isEnd; 
	private boolean isGathering;
	private String gameId; 
	private String comment;
	private String supportingTeamImgPath; 
	private String match;
	private String subject; 
	private int clickCnt;
	private int realRegCnt; 
	private String userDirectRegMatchDate;
	
	public String getUserDirectRegMatchDate() {
		return userDirectRegMatchDate;
	}
	public void setUserDirectRegMatchDate(String userDirectRegMatchDate) {
		this.userDirectRegMatchDate = userDirectRegMatchDate;
	}
	public int getRealRegCnt() {
		return realRegCnt;
	}
	public void setRealRegCnt(int realRegCnt) {
		this.realRegCnt = realRegCnt;
	}
	public String getPartyId() {
		return partyId;
	}
	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}
	public String getPartyManager() {
		return partyManager;
	}
	public void setPartyManager(String partyManager) {
		this.partyManager = partyManager;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getMaxParticipants() {
		return maxParticipants;
	}
	public void setMaxParticipants(int maxParticipants) {
		this.maxParticipants = maxParticipants;
	}
	public Date getDeadLine() {
		return deadLine;
	}
	public void setDeadLine(Date deadLine) {
		this.deadLine = deadLine;
	}
	public boolean isEnd() {
		return isEnd;
	}
	public void setEnd(boolean isEnd) {
		this.isEnd = isEnd;
	}
	public boolean isGathering() {
		return isGathering;
	}
	public void setGathering(boolean isGathering) {
		this.isGathering = isGathering;
	}
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getSupportingTeamImgPath() {
		return supportingTeamImgPath;
	}
	public void setSupportingTeamImgPath(String supportingTeamImgPath) {
		this.supportingTeamImgPath = supportingTeamImgPath;
	}
	public String getMatch() {
		return match;
	}
	public void setMatch(String match) {
		this.match = match;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getClickCnt() {
		return clickCnt;
	}
	public void setClickCnt(int clickCnt) {
		this.clickCnt = clickCnt;
	}

}
