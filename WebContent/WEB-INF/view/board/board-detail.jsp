
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
<link href="../resource/css/reset.css" rel="stylesheet" type="text/css" />
<link href="../resource/community/css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../resource/js/modernizr.js"></script>
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
				<article>
					<h1>게시판 글</h1>
						<dl>
							<dt>제목</dt><dd>${article.title }</dd>
							<dt>조회수</dt><dd>${article.hit }</dd>
							<dt>댓글수</dt><dd>${article.cntCmnt }</dd>
							<dt>등록일</dt><dd><fmt:formatDate value="${article.regDate }" pattern="yyyy-MM-dd"/></dd>
							<dt>내용</dt><dd>${article.content }</dd>
						</dl>
				</article>
				
			
				<nav>
					<h1>게시판 글 하단 버튼</h1>
					
						<form method="POST">
							<input type="hidden" name="articleId" value="${article.intId}" />
							<input type="submit" name="btn" value="deleteArticle"/>
						</form>
						<p><a href="${ctxName}/board/board-list">목록</a></p>
						<p>글 쓰기</p>
						<p>신고</p>
				</nav>
				
				<div id="comment">
				<article>
					<h1>댓글</h1>
						<div>
						
							
							<c:forEach var="comment" items="${article.commentsOfThis}">
								<dl>
									<dt class="seq">번호</dt><dd></dd>
									<dt class="writer-name">작성자이름</dt><dd>${comment.writerName }</dd>
									<dt class="content">내용</dt><dd>${comment.content }</dd>
									<dt class="reg-date">등록일</dt><dd>${comment.regDate }</dd>
		
								</dl>
								<p>수정</p>
								<p>삭제</p>
								<p>신고</p>
							</c:forEach>
						</div>
						
					
				</article>
				
				
				<section id="reg-comment">
					<h1>댓글 작성</h1>
						<p>작성자 닉네임</p>
						<form method="POST">
							<input type="hidden" name="articleId" value="${article.intId}" />
							<label>작성자id</label><input type="text" name="writerId"/>
							<label>내용</label><input type="text" name="content"/>
							
							<input type="submit" name="btn" value="regComment"/>
						</form>
						
				</section>
				
				</div> <!-- comment -->
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