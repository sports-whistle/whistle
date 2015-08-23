<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Information Detail</title>
<style>

#hidden{

	display: none;
}

.team-info-list{

	list-style: none; 
}


/* 단체사진 */
.team-info-list div:FIRST-CHILD{

	border: 1px dotted blue; 
	width: 500px; 
	height: 300px; 
	margin-left: 10px; 
	float:left; 
}

/* 과거성적 */
.team-info-list div:FIRST-CHILD+div{

	border: 1px dotted red; 
	width: 500px; 
	height: 300px; 
	margin-left: 600px; 
}

/* 연 혁 */
.team-info-list div:FIRST-CHILD+div+div{

	border: 1px dotted red; 
	width: 500px; 
	height: 500px; 
	margin-left: 10px;
	margin-top: 50px;  
	float: left;
}


/* 응원가 */
.team-info-list div:FIRST-CHILD+div+div+div{

	border: 1px dotted blue; 
	width: 500px; 
	height: 300px; 
	margin-left: 600px;
	margin-top: 50px;  
}

/* 슬로건*/
.team-info-list div:FIRST-CHILD+div+div+div+div{

	border: 1px dotted red; 
	width: 300px; 
	height: 200px; 
	margin-left: 600px;
	margin-top: 20px;  
}

</style>

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
		<!-- <h1>whistle</h1> -->
		<h1>${team.name}</h1>
	</header>
	<main>
		<section>
			<h1 id="hidden">메인화면</h1>
	
		<article id="team-info">
			<ul class="team-info-list">
		<!-- 단체사진 연혁 공식 사이트 대표선수 3 응원가 성적 슬로건 -->
				<%-- <div>
					<li><p>${team.name}</p></li>
				</div> --%>
				
				<div>
					<li><label>단체사진</label><p>${team.membersUrl }</p></li>
				</div>
				
				<div>
					<li><label>과거 성적</label><p>${team.lastCareer}</p></li>
				</div>
				
				<div>
					<li>
						<label>연혁</label>
						<img src="${ctxName }${team.historyUrl }"/>
					</li>
				</div>
				
			
				<div>
					<ul><!-- 응원가 -->
						<c:forEach var="song" items="${songs}">
							<li>
								<p>${song.name }</p>
								<img src="${ctxName }${song.mp3Url }"/>
							</li>
						</c:forEach>
					</ul>
				</div>
			
				<div>				
					<li>
						<label>슬로건</label>
						<img src="${ctxName }${team.sloganUrl }"/>
					</li>
					
					<li><label>공식 사이트</label><p>${team.teamSiteUrl}</p></li>
				</div>
				
			</ul>
			
			
		</article>
		</section>
	</main>
</body>
</html>