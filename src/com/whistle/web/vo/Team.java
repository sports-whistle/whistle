package com.whistle.web.vo;

public class Team {

	private String teamId;
	private String name;
	private String sportsKind;
	private String regionName;
	
	/*6개 문자, 16진수*/
	private String colorRgb;
	//팀 로고
	private String emblemUrl;
	//팀 슬로건
	private String sloganUrl;
	private String historyUrl;
	
	//선수 단체 사진
	private String membersUrl;
	
	private String mascotUrl;
	
	private String newsUrl;
	// 겉으로 보이는 뉴스 Url
	private String newsUrlFake;
	
	// 찾아 오시는 길
	private String guideUrl;
	
	//경기장 내부 안내 ( 내관 사진 클릭하면 나오는거)
	private String guideInsideUrl;
	
	
	//경기장 내관 사진
	private String stadiumInsideUrl;
	//경기장 외관 사진
	private String stadiumOutsideUrl;
	
	// 저번 시즌 성적? 최고 성적 .. 끝이 2위 등, ~ 위로 끝나야함 (패턴)
	private String lastCareer;
	
	//팀 공식 사이트 주소
	private String teamSiteUrl;

	
	
	
	public String getTeamId() {
		return teamId;
	}

	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSportsKind() {
		return sportsKind;
	}

	public void setSportsKind(String sportsKind) {
		this.sportsKind = sportsKind;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	public String getColorRgb() {
		return colorRgb;
	}

	public void setColorRgb(String colorRgb) {
		this.colorRgb = colorRgb;
	}

	public String getEmblemUrl() {
		return emblemUrl;
	}

	public void setEmblemUrl(String emblemUrl) {
		this.emblemUrl = emblemUrl;
	}

	public String getSloganUrl() {
		return sloganUrl;
	}

	public void setSloganUrl(String sloganUrl) {
		this.sloganUrl = sloganUrl;
	}

	public String getHistoryUrl() {
		return historyUrl;
	}

	public void setHistoryUrl(String historyUrl) {
		this.historyUrl = historyUrl;
	}

	public String getMembersUrl() {
		return membersUrl;
	}

	public void setMembersUrl(String membersUrl) {
		this.membersUrl = membersUrl;
	}

	public String getMascotUrl() {
		return mascotUrl;
	}

	public void setMascotUrl(String mascotUrl) {
		this.mascotUrl = mascotUrl;
	}

	public String getNewsUrl() {
		return newsUrl;
	}

	public void setNewsUrl(String newsUrl) {
		this.newsUrl = newsUrl;
	}

	public String getNewsUrlFake() {
		return newsUrlFake;
	}

	public void setNewsUrlFake(String newsUrlFake) {
		this.newsUrlFake = newsUrlFake;
	}

	public String getGuideUrl() {
		return guideUrl;
	}

	public void setGuideUrl(String guideUrl) {
		this.guideUrl = guideUrl;
	}


	

	

	public String getGuideInsideUrl() {
		return guideInsideUrl;
	}

	public void setGuideInsideUrl(String guideInsideUrl) {
		this.guideInsideUrl = guideInsideUrl;
	}

	public String getStadiumInsideUrl() {
		return stadiumInsideUrl;
	}

	public void setStadiumInsideUrl(String stadiumInsideUrl) {
		this.stadiumInsideUrl = stadiumInsideUrl;
	}

	public String getStadiumOutsideUrl() {
		return stadiumOutsideUrl;
	}

	public void setStadiumOutsideUrl(String stadiumOutsideUrl) {
		this.stadiumOutsideUrl = stadiumOutsideUrl;
	}



	public String getLastCareer() {
		return lastCareer;
	}

	public void setLastCareer(String lastCareer) {
		this.lastCareer = lastCareer;
	}

	public String getTeamSiteUrl() {
		return teamSiteUrl;
	}

	public void setTeamSiteUrl(String teamSiteUrl) {
		this.teamSiteUrl = teamSiteUrl;
	}

	
}
