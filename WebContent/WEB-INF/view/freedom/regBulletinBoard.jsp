<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 등록</title>
<link href="../resource/css/reset.css" rel="stylesheet" type="text/css" />
</head>
<style>
#header{
	height: 70px; 
	border: 1px dotted red;
}

#visual{
	height: 171px; 
	/* border: 1px dotted red; */
}	

#body{
	min-height: 300px;  
	border: 1px dotted blue; 
}

/* aside 스타일  ------->  */
#aside{
	height: inherit; /* 부모인 content-wrapper height 값 없기 때문에 height는 auto */
	/* height: 100px; */
	width: 205px;
	float: left; 
}

#aside > div{
	border: 1px dotted red; 
	height: 150px; 
	line-height: 150px;
	text-align: center; 
	width: inherit;
}
/* <------- aside 스타일   */


#main{
	height: inherit; 
	width: 755px; 
	border: 1px dotted green; 
	float: left;  
	position: relative;
}

.content-wrapper{
	min-height: inherit;
	/* height:200px; */
	width: 1000px; 
	/* border: 1px solid red; */
	margin-left: auto; 
	margin-right: auto;  
}

/* 헤주지 않으면 aside, main height 가 늘어나도 body height값이 같이 증가하지 않는 이유는
중력방향이 달라서 그런것이다. */
.clearfix:after {
	content: ".";           
	display: block;    		   /* 공간을 만들어줘야 height, line-height 값을 0으로 적용하여 안보이는것 처럼 할 수 있기 때문에  */
	clear: both;               /* main에 적용되고 있는 float: left; 를 해제 해주기 위함 */
	visibility: hidden;	       /* 공간은 있지만 존재하지 않는것처럼 하기 위해서*/  
	line-height: 0; 	 	   /* 라인의 높이 */
	height: 0;      		   /* 차지하고 있는 공간을 0으로 만들어줌 */
}

/* bulletinBoard 타이틀 스타일  ---> */
#main-title{
	display: block;
	float: left; 
}

#main-title + section{
	border: 1px solid blue; 
	display: inline-block;
	margin-left: 250px; 
}

#main-title + section li{
	float: left; 
	margin-right: 10px; 
}
/* <--- bulletinBoard 타이틀 스타일   */

#quick-menu {
 	height: 50px; 
	width: 100%;
	background: pink; 
	position: fixed; 
	bottom: 0;
}

#quick-menu:HOVER {
	height: 100px;
}

#hidden{
	
	display: none;
}
</style>
<body>

	<header id="header">
		<h1>게시판 등록</h1>
		<div class="content-wrapper"></div>
	</header>
	
	
	<div id="visual">
		<div class="content-wrapper"></div>
	</div>
	
	<div id="body">
		<div class="content-wrapper clearfix">
			<aside id="aside">
			<h1 id="hidden">aside</h1>
				<div>
					구글사이트
				</div>
			
			
				<div>
					네이버사이트
				</div>
				
				<div>
					류윤광 블로그
				</div>
			</aside>
		
			<main id="main">
			<section>
				<h1 id="main-title">게시판 등록</h1>
			
				<section>
					<h1 id="hidden">경로</h1>
					<ul>
						<li>류윤광 블로그</li>
						<li>></li>
						<li>놀이터</li>
						<li>></li>
						<li>류윤광의 게시판 등록</li>
					</ul>
				</section>
				
				<section>
					<h1 id="hidden">게시판 등록하는 부분입니다.</h1>
					<form action="" method="post" enctype="multipart/form-data">
						<!-- <lable>제목</lable>
						<input type="text"/>
						
						<lable>첨부파일</lable>
						<input type="file"/>
						
						<lable>내용</lable>
						<textarea cols="40" rows="20" name="content"></textarea> -->
						
						<dl>
							<dt>제목</dt>
							<input type="text" name="title"/>
							
							<dt>첨부파일</dt>
							<input type="file"/>
							
							<dt>내용</dt>
							<textarea cols="80" rows="20" name="content"></textarea>
						</dl>
						
						<div>
							<input type="submit" value="등록"/>
						</div>
					</form>
				</section>
				
				
			</section>
			</main>		
		</div>
		
	</div>

	<footer>
		<div class="content-wrapper">
			<section>
				류윤광 넌 할 수 있다!
			</section>
		</div>
	</footer>	
	
	<aside id="quick-menu">
		까꿍^^
	</aside>
</body>
</html>