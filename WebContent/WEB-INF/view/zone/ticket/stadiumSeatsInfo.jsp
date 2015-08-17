<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stadium Information</title>
</head>
<style>
.hidden{
	display:none;
}
#header{
	width:50px;
}
#logo{
	height: 100px;
}
#content{
	text-align:center;
}
#background{
	background: #1E3269;
}

</style>


<script>

	function init(){
		var team = jsTeam();
		var ticketInfo = jsTicketInfo();
		
		changeBodyColor(team.colorRgb);
		changeSeatsInfoImg(ticketInfo.seatsInfoUrl);
		
	}
	
	function changeBodyColor(color){
		document.getElementById("background").style.backgroundColor=color;
		
	}
	
	function changeSeatsInfoImg(imgUrl){
		var imgs = document.getElementById("content").getElementsByTagName("img");
		imgs[0].src=imgUrl;
	}
	
	function jsTeam(){
		
		var team = {
				colorRgb:"#"+"${team.colorRgb}",
		};
		return team;
	}
	
	function jsTicketInfo(){
		var ticketInfo = {
				seatsInfoUrl:"${ctxName}"+"${ticketInfo.ticketSeatsUrl}"
		};
		return ticketInfo;
	}
	

	addEventListener("load",init);

</script>

<body id="background">
	<header id ="header">
	<h1 id="logo"><img src ="${ctxName }/resource/images/whistle-logo.png"></h1>
	</header>
	<main>
		<section id = "content">
		<h1 class="hidden">좌석정보</h1>
		<p><img src ="../images/stadiumInf.png"></p>
		</section>
	</main>
</body>
</html>