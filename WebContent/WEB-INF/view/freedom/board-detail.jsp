
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


<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>
<style>
	
	.hidden{
		display:none;
	}

	
	
	.clearfix:after{
		content: " ";
	    display: block;
	    height: 0;
	    clear: both;
	    overflow: hidden;
	    visibility: hidden;
	}
	
	
	/*full screen*/
	html{
		height:100%;
	}
	
	body{
		width:100%;
		min-height:100%;
		background-color:black;
		
	}
	
	/*layout*/
	
	#left{
		width:35%;
		min-height:inherti;
		
		float:left;
	}
	
	#right{
		width:65%;
		min-height:inherit;
		float:left;
	}

	
	#right-top{
		width:70%;
		margin-left:auto;
	}
	#right-top p{
		display:block;
		width:254px;
		height:122px;
		
		
		text-indent:-9999px;
		overflow:hidden;
		background: url('${ctxName}/resource/images/freedom/the-message.png') center no-repeat;
		background-size:cover;
		float:right;
	}
	
	
	
	/*게시판 아래 이미지*/
	#right-bottom{
		width:100%;
	}
	
	#right-bottom img{
		display:block;
		width:inherit;
		height:auto;
	}
	


	#right-extra{
		margin-right:10%;
	}

	
	#right-extra #buttons{
		display:block;
		width:50%;
		height:350px;
		float:left;
	}
	
	
	
	
	
	#right-extra #cheering-chat{
		width:50%;
		float:left;
	}
	
	#right-extra #buttons a{
		display:inline-block;
	
		margin-top:160px;
		margin-left:50px;
	
	}
	
	#right-extra #buttons a img{
		display:block;
		
		
		
		
		width:124px;
		height:134px;
		
		background: #ffffff;
		
		
		border-radius: 10px;
  		border: 3px solid #000000;
  		padding: 4px;
		
	}
	
	
	
	/*whistle logo*/
	#left a{
		display:block;
		width:183px;
		height:140px;
		background: url(${ctxName}/resource/images/whistle-logo.png) no-repeat center;
		background-size:cover;
		text-indent:-9999px;
		text-decoration:none;
		overflow:hidden;
		
	}
	
	
	
	#left-bg{
		display:block;
		width:100%;
		
		margin-top:400px;
	}
	
	
	#left-bg img{
		display:block;
		width:100%;
		
	}
	
	
	#content{
		
	}
	
	
	
	#article-list-header{
		font-family:"Arial Black", Gadget, sans-serif;
		font-size:17pt;
		
		margin-bottom:15px;
	
	}

	#board-body{
		width:90%;
		
		float:left;
		background: #eeece1;
		
		border-radius: 20px;
  		border: 4px solid #000000;
  		padding: 20px; 
	}
	
	
	#cheering-chat{
		width:260px;
		height:350px;
		
	
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
		font-weight:bold;
		font-size:1.2em;
	}
	
	#article-list td{
		background: #ddedff;
		font-size:0.9em;
		
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


	/*수정수정수정*/
	
	
</style>
	



</head>
<body class="clearfix">
	
	<div id="whole-page">
	
	<header>
		<h1 class="hidden">헤더메뉴</h1>
	</header>
	
	
	
	<aside id="left">
		<div id="home-logo"><a href="${ctxName}">homelogo</a></div>
		<div id="left-bg"><img src="${ctxName }/resource/images/freedom/bg-left-bottom.png"/></div>
	</aside>
			
	
	
	<main id="right">
		<section>
			<h1 class=hidden>게시판 메인</h1>
			
				
				<div id="right-top" class="clearfix">
					<p>The Message</p>
				</div>
				
				<div id="right-extra" class="clearfix">
				<div id="buttons">
					
					<a href="board-write-article"><img src="${ctxName }/resource/images/freedom/btn-write.png"/></a>
				</div>
				
				<section id="cheering-chat">
					<div id="cheering-chat-app"></div>
				</section>
				</div>
		
		
			
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
		
				
				<div id="right-bottom"><img src="${ctxName }/resource/images/freedom/bg-right-bottom.png"/></div>
				
			
		</section>
	</main>
	


	</div>
</body>
</html>
