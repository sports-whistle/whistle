<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	background:#1E3269;
}
.hidden{
	display:none;
}
#price{
	padding-top: 25px;
}
#seats-info{
	padding-top: 20px;
}
#reservation{
	padding-top: 20px;
}
ul{
list-style: none;
text-align:center;
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

<body id="body">
	<header>
		<h1><img src="${ctxName }/resource/images/whistle-logo.png"/></h1>
	</header>
	<main>
		<nav>
		<h1 class="hidden">티켓정보</h1>
			<ul>
				<li id="price"><a href="ticketPrice?teamId=${team.teamId }"/><img src="${ctxName }/resource/images/zone/team/ticket/price.png"></li>
				<li id="seats-info"><a href="stadiumSeatsInfo?teamId=${team.teamId }"/><img src="${ctxName }/resource/images/zone/team/ticket/seatsInfo.png"></li>
				<li id="reservation"><a href="ticketLink?teamId=${team.teamId }"/><img src="${ctxName }/resource/images/zone/team/ticket/reservation.png"></li>
			</ul>
		</nav>
	</main>
</body>
</html>