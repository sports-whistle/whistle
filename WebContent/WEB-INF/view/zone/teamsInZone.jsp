<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#pinkbody{
	background: url("../images/inCheonBack.png") no-repeat ;
}
#inUtd{
	postion: absolute;
	margin: auto;
}
#elep{
	position: relative;
	margin: auto;
	bottom: 190px;
	left: 470px;
}
#shinHan{
	position: relative;
	margin: auto;
	bottom: 340px;
	left: 870px;
}
#jumbo{
	position:relative;
	margin: auto;
	bottom: 260px;
}
#pinS{
	position:relative;
	margin: auto;
	bottom: 420px;
	left: 470px;
}
#incheonSk{
	position:relative;
	margin: auto;
	bottom: 610px;
	left:  840px;
}

#hidden{

	display: none; 
}

ul{

	border: 1px solid maroon;
	height: overflow; 
}


li{

	/* width: 300px; 
	height: 300px;  */
	float: left;
	list-style: none;
	border: 1px dotted purple;
	display: inline;
}

ul li:FIRST-CHILD{

	margin-left: 150px; 

}

.team-background-img{

	/* position: relative; */
}



.team-background-img p{

	width: 300px; 
	height: 300px; 
	border: 1px dotted red;
}

#up{

	border: 1px dotted black; 
}  

#up p:FIRST-CHILD{
	
	border: 1px solid red;  
	margin-left: 200px; 
	float: left; 
}

#up p:FIRST-CHILD + p{
	border: 1px solid red;  
	margin-left: 200px; 
	float: left; 
}

#up p:FIRST-CHILD + p + p{
	border: 1px solid red;  
	margin-left: 1200px; 
}

#down{

	border: 1px dotted green;
	position: absolute;
	top: 900px; 
}

#down p:FIRST-CHILD{
	
	border: 1px solid blue;  
	margin-left: 200px; 
	float: left; 
}

#down p:FIRST-CHILD + p{
	border: 1px solid blue;  
	margin-left: 200px; 
	float: left; 
}

#down p:FIRST-CHILD + p + p{
	border: 1px solid blue;  
	margin-left: 1200px; 
}
</style>

<script>



</script>

</head>

<body id = "pinkbody">
	<header>
		<h1><a href="${ctxName}/main/index"><img src="${ctxName}/resource/images/index/whistle.png" alt="logo"></a></h1>
	</header>
	
	
	<main>
		<section>
			<h1 id="hidden">메인화면</h1>
			
			<section class="team-background-img">
			
				<div id = "up">
					<p>팀 이미지1</p>
					<p>팀 이미지2</p>
					<p>팀 이미지3</p>
				</div>
				
				<div id = "down">
					<p>팀 이미지4</p>
					<p>팀 이미지5</p>
					<p>팀 이미지6</p>
				</div>
				
			</secion>
			
			<section>
				<nav>
					<h1 id="hidden">인천팀링크</h1>
					<ul id="teams-list">
						<%-- <li id= inUtd><a href="${ctxName}/zone/selectedZone/teamMenu"><img src="${ctxName}/resource/images/zone/team/volleyBall/electronicLand/elep.png"/>인천유나이티드</a></li>
						<li id= elep><a href="${ctxName}/zone/selectedZone/teamMenu"><img src="${ctxName}/resource/images/zone/team/volleyBall/electronicLand/elep.png"/>전자랜드</a></li>
						<li id= shinHan><a href="${ctxName}/zone/selectedZone/teamMenu"><img src="${ctxName}/resource/images/zone/team/volleyBall/electronicLand/elep.png"/>신한은행</a></li>
						<li id= jumbo><a href="${ctxName}/zone/selectedZone/teamMenu"><img src="${ctxName}/resource/images/zone/team/volleyBall/electronicLand/elep.png"/>대한항공</a></li>
						<li id= pinS><a href="${ctxName}/zone/selectedZone/teamMenu"><img src="${ctxName}/resource/images/zone/team/volleyBall/electronicLand/elep.png"/>흥국생명</a></li>
						<li id= incheonSk><a href="${ctxName}/zone/selectedZone/teamMenu"><img src="${ctxName}/resource/images/zone/team/volleyBall/electronicLand/elep.png"/>와이번스</a></li> --%>
					
						<c:forEach var="team" items="${teams }">
							<li><a href="${ctxName}/zone/selectedTeam/team/teamInfo?teamId=${team.teamId}"><img src="${ctxName}${team.emblemUrl}"/></a></li>
						</c:forEach>
					</ul>
				</nav>
			</section>
		
		</section>
	</main>

</body>
</html>