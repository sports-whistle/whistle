<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Price</title>
</head>
<style>
body{
	background: black;
}
.hidden{
	display:none;
}
#price{
	text-align:center;
	padding-top: 30px;
}
#price2{
	text-align:center;
	padding-top: 50px;
}
</style>

<script>


	function init(){
		var team = jsTeam();
		var ticketInfo = jsTicketInfo();
		
		changeBodyColor(team.colorRgb);
		changeTicketPriceImg(ticketInfo.ticketPriceUrl);
		
	}
	
	function changeBodyColor(color){
		document.getElementById("background").style.backgroundColor=color;
		
	}
	
	function changeTicketPriceImg(imgUrl){
		//노드 찾기
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
				ticketPriceUrl:"${ctxName}"+"${ticketInfo.ticketPriceUrl}"
		};
		return ticketInfo;
	}
	
	
	addEventListener("load",init);

</script>

<body id="background">
	<header>
	<h1><a href=""/><img src="${ctxName }/resource/images/whistle-logo.png"/></h1>
	</header>
	<main>
		<section>
		<h1 class="hidden">티켓가격</h1>
			<section id="content">
				<p id="price"><img src ="${ctxName }/resource/dj/images/ticketprice.png"></p>
			</section>
		</section>
	</main>
</body>
</html>