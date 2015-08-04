<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="../resource/css/reset.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../resource/js/modernizr.js"></script>

<style>

	.hidden{
		display:none;
	}

	.content-wrapper{
		width:1152px;
		margin-left:auto;
		margin-right:auto;
	}
	
	
	.clearfix:after{
		content: " ";
	    display: block;
	    height: 0;
	    clear: both;
	    overflow: hidden;
	    visibility: hidden;
	}
	
	#page{
	width:100%;
	height:920px;
	background:url(${ctxName}/resource/images/about-us/bg-about-us-page.png) no-repeat center;
	background-size: 70% 100%;
	background-position: 60% 0%;
	}
	
	#header{
		height:140px;
	}
	
	#home-logo{
		display:inline-block;
		float:left;
		height:120px;
		width:157px;
		
		text-indent:-9999px;
		
		
		margin-left:20px;
		
		background: url(${ctxName}/resource/images/about-us/whistle-logo.png) no-repeat center;
		background-size: cover;
		
	}
	
	
	
	
	.replace-with-logo{
		display:inline-block;
		height:70px;
		width:102px;
		
		text-indent:-9999px;
		
		
		
		background: url(${ctxName}/resource/images/whistle-logo.png) no-repeat center;
		background-size: cover;
		
	}

	
	
	

	
	#upper-content p{
		display:inline-block;
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:18pt;
		
	}
	
	#lower-content p{
		display:inline-block;
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:16pt;
		
	}
	
	#about-us-title{
		display:inline-block;
		float:right;
		margin-top:10px;
		margin-right:20px;
		
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:26pt;
		font-style:italic;
	}
	
	
	#upper-content{
		width:800px;
		height:370px;
		
	 	margin-left:305px; 
		
		
		padding-left:305px;
	}
	
	#lower-content{
		width:900px;
		height:400px;
		
	 	margin-left:210px; 
	 	
	 	padding-left:210px;
	}

</style>





</head>
<body>
	
	<div id="page">
	<header>
	<div class="content-wrapper">
		<h1 class="hidden">about us</h1>
		<section id="header">
			<p id="home-logo">home logo</p>
			<p id="about-us-title">About Us</p>
			
		</section>
	</div>
	</header>

	<main>
	<div class="content-wrapper">
		<section>
			<h1 class="hidden"></h1>
		
			<section id="upper-content">
				<p>여러분의 Sports Zone! 살아가면서</p>
				<p>많은 즐거움과 행복을 누릴 수 있습니다.</p>
				<p>여러분의 Sports Zone!</p>
				
				<div id="upper-logo-p">
				<p class="replace-with-logo">Whistle image</p><p class="p-beside-logo">이 만들어 가겠습니다.</p>
				</div>
			</section>
			
			
			<section id="lower-content">
			
				<div id="upper-logo-p">
				<p class="replace-with-logo">Whistle image</p><p class="p-beside-logo">은 모든 스포츠 경기의 시작을 알리는 의미로</p>
				</div>
				<p>우리나라의  Sports Zone Trend 형성의 시작을 알리고</p>
				<p>많은 사람들이 쉽게 스포츠 정보 서비스를 이용할 수 있고</p>
				<p>즐길수 있도록 하여</p>
				<p>Whistle 처럼 많은 사람들을 스포츠 세계로 끌어 모으기 위한</p>
				<p>중심이 되고 싶습니다. 우리 지역에도 스포츠를 느낄 수 있는 재미와</p>
				<p>공간이 많고 새로운 즐거뭉을 공유할 수 있도록 좋은 스포츠 서비스이자</p>
				<p>당신만의 Sports Zone을 만들어드리겠습니다.</p>
			</section>
		
		
		
		
		</section>
	</div>
	</main>

	</div>


</body>
</html>