
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>article-detail</title>
<link href="../resource/css/reset.css" rel="stylesheet" type="text/css" />
<link href="../resource/community/css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../resource/js/modernizr.js"></script>
<style>
	body{
        font-family: 돋움, Arial, sans-serif;
        font-size:100%;
   		line-height:18px;
      }

	.hidden{
		display:none;
	}

	#reg-comment{
		margin-top:30px;
	}
</style>
</head>
<body>
	<h1 class="hidden">게시판 글</h1>
	<header id="content-wrapper">
	<div class="content-wrapper">
		<section>
			<h1 class="hidden">헤더메뉴</h1>
				<nav id="top" class="extendfull">
				
					<h1>최상단 메뉴</h1>
						<ul>
							<li>홈</li>
							<li>게시판 카테고리</li>
							<li>즐겨찾기</li>
							<li>스크랩</li>
							<li>ID</li>
							<li>설정</li>
						</ul>
				
				</nav>
				
				<section id="blank">
				
					<h1 class="hidden">상단메뉴</h1>
						<p>로고</p>
						<p>살어리 살어리낫다.</p>
			
				</section>
		</section>
	</div>	
	</header>
	
	<div id="body">
	<div class="content-wrapper clearfix">
	
	
	
	<main id="main">
		<section>
			<h1 class="hidden">게시판 글 쓰기 메인</h1>
			
				<header id="main-header">
					<section>
						<h1 class="hidden">게시판 글 쓰기 헤더</h1>
						
						<p>자유게시판 글 쓰기</p>
						
					</section>				
				</header>
				
				
				<div id="main-body">
				<article>
					<h1>게시판 글</h1>
						
						
						<form method="POST" enctype="multipart/form-data">
							<label>제목</label><input type="text" name="title"/>
							<label>첨부</label><input type="file" name="afile"/>
							<label>내용</label><input type="text" name="content"/>
							<label>작성자</label><input type="text" name="writerId"/>
							<input type="submit" name="btn" value="writeArticle"/>
						</form>
					
					
					
				</article>
				
			
				<nav>
					<h1>게시판 글 하단 버튼</h1>
						<p>------글을 쓰자 글을 쓰자--------</p>
				</nav>
				
				
				</div> <!-- main-body -->
				
				
				
			
				
		</section>
	</main>
	
	<aside id="aside">
					<h1>게시판 글 어사이드 메뉴</h1>
						<dl>
							<dt>첨부파일 목록</dt><dd>첨부첨부</dd>
							
						</dl>
				</aside>
	</div> <!-- content-wrapper -->
	</div> <!-- body -->
	
	<footer id="footer">
	<div class="content-wrapper">
		<section>
			<h1 class="hidden">저작 정보</h1>
				<dl>
					<dt>회사이름</dt><dd>꿀렁꿀렁</dd>
					<dt>장소</dt><dd>인천시 부평구 부평3동</dd>
				</dl>
		</section>
	</div>
	</footer>

</body>
</html>