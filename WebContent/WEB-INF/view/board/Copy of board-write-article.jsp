<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>article-list</title>
<link href="${ctxName }/resource/css/reset.css" rel="stylesheet" type="text/css" />
<link href="${ctxName }/resource/community/css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>
<style>
	
	.hidden{
		display:none;
	}

	.content-wrapper{
		width:1152px;
		height:inherit;
		
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
	
	
	
	#whole-page{
		width:100%;
		height:100%;
		background-image:url(${ctxName}/resource/images/board/bg-board-pattern.png);
		background-size: 120%;
	}
	
	#home-logo{
		
		height:160px;
		width:140px;
	}
	
	#home-logo a{
		display:block;
		width:183px;
		height:140px;
		background: url(${ctxName}/resource/images/whistle-logo.png) no-repeat center;
		background-size:cover;
		text-indent:-9999px;
		text-decoration:none;
		overflow:hidden;
		
	}
	
	
	#content{
		
	}
	
	
	#header{
		width:inherit;
		height:160px;
		
		
		
	}
	
	#article-list-header{
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:17pt;
		
		margin-bottom:15px;
	
	}

	#main-body{
		width:810px;
		
		float:right;
		background:yellow;
		
		border-radius: 25px;
  		border: 2px solid #FFFFFF;
  		padding: 20px; 
	}
	
	
	#main-aside{
		width:260px;
		height:600px;
		
		float:left;
		background:green;
	}
	
	
	
	#article-list{
	}

	
	
	#page-description{
		
		height:auto;
		width:auto;
		
		
		margin-top:40px;
		padding-bottom:50px;
	}
	
	#page-description p{
	
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:70px;
		font-style:italic;
		
		margin-left:80px;
		
	}
	
	/*** article list ***/
	
	#article-list table{
	
	}
	
	#article-list tr{
		heigth:30px;
		line-height:30px;
	}
	
	#article-list th:first-child,
	#article-list td:first-child{
		text-align: center;
		width:80px;
	}
	
	#article-list th:first-child+th,
	#article-list td:first-child+td{
		text-align: center;
		width:400px;
	}
	
	#article-list th:first-child+th+th,
	#article-list td:first-child+td+td{
		text-align: center;
		width:150px;
	}
	
	#article-list th:first-child+th+th+th,
	#article-list td:first-child+td+td+td{
		text-align: center;
		width:80px;
	}
	
	
	/** view **/
	#article-list th:first-child+th+th+th+th,
	#article-list td:first-child+td+td+td+th{
		text-align: center;
		width:80px;
	}

</style>
	



</head>
<body>
	
	<div id="whole-page">
	<h1 class="hidden">게시판</h1>
	<header>
		<div class="content-wrapper">
			<section id="header">
				<h1 class="hidden">헤더메뉴</h1>
				<nav id="home-logo"><a href="${ctxName}">homelogo</a></nav>
			</section>
		</div>
	</header>
	
	
	
	
	<main id="main">
		<div class="content-wrapper clearfix">
		<section>
			
		<div id="content">
				
		<div id="main-body">
				<section>
					<h1>게시판 글</h1>
						
						
						<form method="POST" enctype="multipart/form-data">
							<label>제목</label><input type="text" name="title"/>
							<label>첨부</label><input type="file" name="afile"/>
							<label>내용</label><input type="text" name="content"/>
							<label>작성자</label><input type="text" name="writerId"/>
							<input type="submit" name="btn" value="writeArticle"/>
						</form>
					
					
					
				</section>
				
			
				<nav>
					<h1>하단 버튼</h1>
					
				</nav>
				
				
				</div> <!-- main-body -->
				
			<aside id="main-aside">
			</aside>
			
		
		
			</div>
			
			
		</section>
		</div>
	</main>
	

	<section id="page-description">
	<div class="content-wrapper">
				<p>Fans Precedes a Team.</p>
	</div>
	</section>


	</div>
</body>
</html>