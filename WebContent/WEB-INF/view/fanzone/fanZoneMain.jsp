<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EnjoySportsTogether</title>
</head>
<style>
#fanEnjoy{
	width: 350px;
	height: 1000px;
	background: blue;
	float:left;'
	}
#fanSports{
	width: 350px;
	height: 1000px;
	background: beige;
	float: left;
}
#fanTogether{
	width: 350px;
	height: 1000px;
	background: red;
	float: left;
}
</style>

<script>

window.addEventListener("load", function name() {
	
	var fanEnjoy = document.getElementById("fanEnjoy");
	var fanSports = document.getElementById("fanSports");
	
	fanEnjoy.onclick = function () {
		
		alert("죄송합니다ㅜㅜ 서비스 준비중입니다");
		
	};
	
	fanSports.onclick = function () {
		
		alert("죄송합니다ㅜㅜ 서비스 준비중입니다");
		
	};
});


</script>

<body>
	<!-- <header>
		<h1>Whistle(로고)</h1>
	</header> -->

	<main>
		<section>
			<h1>EnjoySportsTogether 기능</h1>

			<nav id = fanEnjoy>
				<h1>Enjoy</h1>
					<p><a href="">Enjoy</a></p>
			</nav>

			<nav id = fanSports>
				<h1>Sports</h1>
				<p><a href="">Sports</a></p>
			</nav>
			
			<nav id = fanTogether>
				<h1>Together</h1>
				<p><a href="${ctxName}/fanzone/cars/carsStart">Together</a></p>
			</nav>
		</section>
	</main>
</body>
</html>