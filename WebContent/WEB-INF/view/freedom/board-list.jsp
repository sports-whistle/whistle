
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
	
	
	/**/
	#whole-page{
		width:100%;
		height:100%;
		background-image:url(${ctxName}/resource/images/board/bg-board-pattern.png);
		background-size: 120%;
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
		height:318px;
		
		background-image:url(${ctxName}/resource/images/board/bg-board-header.png);
		background-size: cover;
		
	}
	
	#article-list-header{
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:17pt;
		
		margin-bottom:15px;
	
	}

	#board-body{
		width:810px;
		
		float:left;
		background: #eeece1;
		
		border-radius: 25px;
  	border: 4px solid #000000;
  		padding: 20px; 
	}
	
	
	#cheering-chat{
		width:260px;
		height:600px;
		
		float:right;
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
	
	
	#article-list th{
		background: #9dc6f5;
		
		
	}
	
	#article-list td{
		background: #ddedff;
		
		
	}
	
	
	
	#article-list table{
	border-collapse: separate;
     border-spacing: 0px 4px;
	}
	
	#article-list td,
	#article-list th{
		text-align:center;
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
			
			<h1 class=hidden>게시판 메인</h1>
			
			
			<div id="content">
			
				
		
		
		
			
				<div id="board-body">
				<div id="article-list-header">
			
						<p>Whistle Free Board</p>
				
				</div>
				<nav id="article-list">
					<h1 class="hidden">게시판 글 목록</h1>
						
						<table>
							<thead>
								<tr>
									<th>글 번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="article" items="${articleList}">
							<tr>
								
								<td class="seq">${article.intId}</td>
								<td class="title"><a href="board-detail?detail=${article.intId}"/>${article.title} [${article.cntCmnt }]</td>
								<td class="writer">${article.writerName}</td>
								<td class="regdate"><fmt:formatDate value="${article.regDate }" pattern="yyyy-MM-dd"/></td>
								<td class="hit">${article.hit }</td>
								
							</tr>
							</c:forEach>
							</tbody>
						</table>
				</nav>
				
			
		
				<nav id="board-controller">
					<h1 class="hidden">게시판 하단 네비</h1>
						
							<p id="write-button"><a href="board-write-article">글 쓰기</a></p>
				</nav>
				
				<nav id="board-page-nav">
					<h1 class="hidden">게시판 페이지 이동</h1>
						
						<ul id="board-page-nav-numbers">
							<li><a href="board-list?page=1">1</a></li>
							<li><a href="board-list?page=2">2</a></li>
							<li><a href="board-list?page=3">3</a></li>
							<li><a href="board-list?page=4">4</a></li>
						</ul>
				</nav>
		
				</div>
		
				<section id="cheering-chat">
					<div id="cheering-chat-app"></div>
				</section>
				
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