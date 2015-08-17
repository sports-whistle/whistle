<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ctxName }/resource/css/reset.css" rel="stylesheet" type="text/css" />

<style>

</style>

</head>

<body id = "pinkbody">
	<header>
		
		<h1><img src="${ctxName }/resource/images/whistle-logo.png"  alt="whistlelogo"></h1>
	</header>
	<main>
		<section>
			<h1>메인화면</h1>
			
			<nav>
				<h1>팀 링크</h1>
				<ul id="teams-list">
					<li><a href="${ctxName}/zone/team/teamInfo"><img src="${ctxName}/resource/zone/team/emblem/emblem-icnUtd-sampel.png"/>인천유나이티드</a></li>
					<c:forEach var="team" items="${teams }">
						<li><a href="${ctxName}/zone/team/teamInfo?teamId=${team.teamId}"><img src="${ctxName }${team.emblemUrl}"/></a></li>
					</c:forEach>
					
				</ul>
			</nav>
			
		</section>
	</main>
</body>
</html>