<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	background: black;
}
.hidden{
	display:none;
}
#inutd{
	text-align:center;
	transform:scale(2,2);
	padding-top: 100px;
	

	
}
img { 
border:0;
 } 
a:hover img {
 width:200px; 
 height:200px; 
 padding:5px; 
 background:#fff; 
 border:1px solid #000; 
transform:rotate(45deg);
 
 }
</style>
<body>
	<header>
	<h1><a href=""/><img src="${ctxName}/resource/images/common/whistle-logo.png"></h1>
	</header>
	<main>
		<section id="inutd">
			<h1 class="hidden">인천구단뉴스</h1>
			<p><img src="${ctxName}/resource/images/chick.png"><a href = "http://www.incheonutd.com">http://www.incheonutd.com</a></p>
		</section>	
	</main>
</body>
</html>