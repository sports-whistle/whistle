<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Information Detail</title>


<script>

	function init(){
		var team = javaToJs();
		changeBodyColor(team.colorRgb);
	}
	
	function changeBodyColor(color){
		document.getElementById("body").style.backgroundColor=color;
	}
	function javaToJs(){
		var team = {
				colorRgb:"#"+"${team.colorRgb}",
		}
		return team;
	}
	addEventListener("load",init);
</script>

</head>
<body id="body">
	<header>
		<h1>whistle</h1>
	</header>
	<main>
		<section>
			<h1>메인화면</h1>
	
		<article id="team-info">
			<ul class="team-info-list">
				
		<!-- 단체사진 연혁 공식 사이트 대표선수 3 응원가 성적 슬로건 -->
				
				<li><label>팀 명</label><p>${team.name }</p></li>
				<li><label>단체사진</label><p>${team.membersUrl }</p></li>
				<li><label>과거 성적</label><p>${team.lastCareer}</p></li>
				<li>
					<label>슬로건</label>
					<img src="${ctxName }${team.emblemUrl }"/>
				</li>
				<li>
					<label>연혁</label>
					<img src="${ctxName }${team.historyUrl }"/>
				</li>
				<li><label>공식 사이트</label><p>${team.teamSiteUrl }</p></li>
				
				
			</ul>
			
			<ul><!-- 응원가 -->
				<c:forEach var="song" items="${songs }">
					<li>
						<p>${song.name }</p>
						<img src="${ctxName }${song.mp3Url }"/>
					</li>
				</c:forEach>
				
			</ul>
		</article>
		
		
		

		</section>
	</main>
</body>
</html>