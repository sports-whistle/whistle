<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.wrap {position:fixed;  top:0px; left:0px; width:100%; height: 100%; min-width: 1200px; min-height: 780px; 
background: url(${ctxName}/resource/images/aboutUs/AboutUsbg.png); no-repeat center bottom; background-size:cover; transition: all 2s;}

.logo {width:90px; height:80px; position:fixed; top:30px; left:60px; background-size:contain; background-repeat: no-repeat; z-index:2;}


article {position: absolute; top:350px; left:300px; width:600px;}
article p {font-family: 맑은고딕; font-size: 20px; color:black; font-weight: bold; font-style: italic;}

</style>

</head>
<body>


<nav class="logo">


<a href="${ctxName}/main/index"><img src="${ctxName}/resource/images/whistle-logo.png" alt="Logo" /></a>

</nav>



<div class = "wrap">
</div>


<article>
<p><strong>

여러분의 Sports Zone 살아가면서<br> 
많은 즐거움과 행복을 누릴 수 있습니다.<br> 
여러분의 Sports Zone<br> 
이 만들어 가겠습니다. <br> 
<br> 
은 모든 스포츠경기의 시작을 알리는 의미로 <br>
우리나라의 Sports Zone Trend 형성의 시작을 알리고<br>
많은 사람들이 쉽게 스포츠정보 서비스를 공유할 수 있고 즐길 수 있도록 <br>
Whistle 처럼 많은 사람들을 스포츠세계로 끌어 모으기 위한 중심이 되고 싶습니다.<br>
우리 지역에도 스포츠를 느낄 수 있는  재미와 공간이 많고 새로운 즐거움을<br>
공유할 수 있도록 좋은 스포츠서비스이자 당신만의 Sports Zone을 만들어드리겠습니다


</strong></p>


</article>





</body>
</html>