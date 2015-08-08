package com.whistle.web.vo;

public class Team {
	private String TeamId;
	private String Name;
	private String SportsKind;
	private String RegionName;
	
	/*6개 문자, 16진수*/
	private String ColorRgb;
	//팀 로고
	private String EmblemUrl;
	//팀 슬로건
	private String SloganUrl;
	private String HistoryUrl;
	
	//선수 단체 사진
	private String MembersUrl;
	
	private String MascotUrl;
	
	private String NewsUrl;
	// 겉으로 보이는 뉴스 Url
	private String NewsUrlFake;
	
	// 찾아 오시는 길
	private String GuideUrl;
	
	//경기장 내부 안내 ( 내관 사진 클릭하면 나오는거)
	private String GuideInsideUrl;
	
	
	//경기장 내관 사진
	private String StadiumInsideUrl;
	//경기장 외관 사진
	private String StadiumOutsideUrl;
	
	// 저번 시즌 성적? 최고 성적 .. 끝이 2위 등, ~ 위로 끝나야함 (패턴)
	private String LastCareerUrl;
	
	//팀 공식 사이트 주소
	private String TeamSiteUrl;

	
	
	
	
	
	
	public String getTeamId() {
		return TeamId;
	}

	public void setTeamId(String teamId) {
		TeamId = teamId;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getSportsKind() {
		return SportsKind;
	}

	public void setSportsKind(String sportsKind) {
		SportsKind = sportsKind;
	}

	public String getRegionName() {
		return RegionName;
	}

	public void setRegionName(String regionName) {
		RegionName = regionName;
	}

	public String getColorRgb() {
		return ColorRgb;
	}

	public void setColorRgb(String colorRgb) {
		ColorRgb = colorRgb;
	}

	public String getEmblemUrl() {
		return EmblemUrl;
	}

	public void setEmblemUrl(String emblemUrl) {
		EmblemUrl = emblemUrl;
	}

	public String getSloganUrl() {
		return SloganUrl;
	}

	public void setSloganUrl(String sloganUrl) {
		SloganUrl = sloganUrl;
	}

	public String getHistoryUrl() {
		return HistoryUrl;
	}

	public void setHistoryUrl(String historyUrl) {
		HistoryUrl = historyUrl;
	}

	public String getMembersUrl() {
		return MembersUrl;
	}

	public void setMembersUrl(String membersUrl) {
		MembersUrl = membersUrl;
	}

	public String getMascotUrl() {
		return MascotUrl;
	}

	public void setMascotUrl(String mascotUrl) {
		MascotUrl = mascotUrl;
	}

	public String getNewsUrl() {
		return NewsUrl;
	}

	public void setNewsUrl(String newsUrl) {
		NewsUrl = newsUrl;
	}

	public String getNewsUrlFake() {
		return NewsUrlFake;
	}

	public void setNewsUrlFake(String newsUrlFake) {
		NewsUrlFake = newsUrlFake;
	}

	public String getGuideUrl() {
		return GuideUrl;
	}

	public void setGuideUrl(String guideUrl) {
		GuideUrl = guideUrl;
	}

	public String getGuideInsideUrl() {
		return GuideInsideUrl;
	}

	public void setGuideInsideUrl(String guideInsideUrl) {
		GuideInsideUrl = guideInsideUrl;
	}

	public String getStadiumInsideUrl() {
		return StadiumInsideUrl;
	}

	public void setStadiumInsideUrl(String stadiumInsideUrl) {
		StadiumInsideUrl = stadiumInsideUrl;
	}

	public String getStadiumOutsideUrl() {
		return StadiumOutsideUrl;
	}

	public void setStadiumOutsideUrl(String stadiumOutsideUrl) {
		StadiumOutsideUrl = stadiumOutsideUrl;
	}

	public String getLastCareerUrl() {
		return LastCareerUrl;
	}

	public void setLastCareerUrl(String lastCareerUrl) {
		LastCareerUrl = lastCareerUrl;
	}

	public String getTeamSiteUrl() {
		return TeamSiteUrl;
	}

	public void setTeamSiteUrl(String teamSiteUrl) {
		TeamSiteUrl = teamSiteUrl;
	}
	
	
	
	
	
}
