
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
	
	


	#board-body{
		width:810px;
		
		float:left;
		background: #eeece1;
		
		border-radius: 25px;
  		border: 4px solid #000000;
  		padding: 20px; 
	}
	
	
	
	#article-title{
		width:inherit;
		overflow:hidden;
		padding-bottom:7px;
		
		border-bottom: 2px solid #000000; 
	}
	
	/* 제목 dt */
	#article dl dt:first-child{
		display:none;
		
	}
	
	/* 제목 dd*/
	#article dl dt:first-child+dd{
		font-family:malgun;
		font-size:20pt;
		font-weight:bold;
	}
	
	/* 조회수 dt*/
	#article dl dt:first-child+dd+dt{
		display:none;
	}
	
	/* 조회수 dd*/
	#article dl dt:first-child+dd+dt+dd{
		display:inline-block;
		font-size:9pt;
		color: #c8c8c8;
	}
	
	/* 댓글수 dt*/
	#article dl dt:first-child+dd+dt+dd+dt{
		display:none;
	}
	
	/* 댓글수 dd*/
	#article dl dt:first-child+dd+dt+dd+dt+dd{
		display:inline-block;
		font-size:9pt;
		color: #c8c8c8;
	
	}
	
	/*등록일 dt*/
	#article dl dt:first-child+dd+dt+dd+dt+dd+dt{
		display:none;
	}
	
	/*reg dat*/
	#article dl dt:first-child+dd+dt+dd+dt+dd+dt+dd{
		
		display:inline-block;
		
		
		font-size:9pt;
		color: #c8c8c8;
	}
	
	/* 내용 dt */
	#article-title+dt{
		display:none;
	}
	
	
	
	/*내용과 제목 전 공간*/
	#article-title+dt+dd:before{
		content:"";
		display:block;
		display:hidden;
		overflow:hidden;
		height:15px;
		
	
	}
	
	/* 내용 dd*/
	#article-title+dt+dd{
		font-size:12pt;
	}
	
	/*내용과 후 공간*/
	#article-title+dt+dd:after{
		content:"";
		display:block;
		display:hidden;
		overflow:hidden;
		height:15px;
		
	
	}
	
	
	#cheering-chat{
		width:260px;
		height:600px;
		
		float:right;
		background:green;
	}
	
	
	
	#article{
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
					<article id="article">
						<h1 class="hidden">게시판 글</h1>
							<dl>
							
								<div id="article-title">
								<dt>제목</dt><dd>${article.title }</dd>
								<dt>조회수</dt><dd>${article.hit } view</dd>
								<dt>댓글수</dt><dd>${article.cntCmnt } comments</dd>
								<dt>등록일</dt><dd><fmt:formatDate value="${article.regDate }" pattern="yyyy-MM-dd"/></dd>
								</div>
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
					
					</div>
		
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