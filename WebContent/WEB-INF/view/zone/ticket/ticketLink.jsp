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
<style type="text/css">
body{
	background:black;
}
.hidden{
	display:none;
}
A:link{
text-decoration:none
}
A:visited{
text-decoration:none
}


#links li{
	color: white;
	font-weight:bold;
	font-size: 50px;
	text-align:center;
	padding-top: 150px;
}

ul{
list-style: none;
text-align:center;
}
link-menu li: first-child{
	color:white;
}

link-menu li a{
	color: white;
}
</style>

<script>

 	function init(){
		var team = jsTeam();
		
		changeBodyColor(team.colorRgb);
	}
	
	function changeBodyColor(color){
		document.getElementById("body").style.backgroundColor=color;
		
	}
		function jsTeam(){
		
		var team = {
				colorRgb:"#"+"${team.colorRgb}",
		};
		return team;
	}
	
	
	addEventListener("load",init); 

</script>

<body id="body">
	<header>
	<h1><a href=""/><img src="${ctxName }/resource/images/whistle-logo.png"/></h1>
	</header>
	<main>
		<section>
		<h1 class="hidden">티켓구입처</h1>
		<nav id ="link-menu">
		<h1 class="hidden">링크abcd</h1>
		<ul id="links">
		
			<c:forEach var="site" items="${ticketSites }">
				<li><a href=${site.siteUrl }>${site.cover }</a></li>
			</c:forEach>
		</ul>
		</nav>
		</section>
	</main>
</body>
</html>