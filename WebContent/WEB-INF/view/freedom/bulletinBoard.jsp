<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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



/* pager 스타일  ------->  */
#pager{

	border: 1px dotted blue;
	margin-top: 20px;  
	width:33%; 
	height:auto; 
	overflow: auto;  
	margin: 0 auto; 
	/* display: inline-block; */
}

#pager > div{

	float: left; 
	margin-right: 15px; 
}

#pager > div + ul + div{

	float: left; 
	margin-left: 15px; 
}

#pager ul{

	/* overflow: auto; */
	display: inline; 
}


#pager li{
	float: left; 
	width: 25px; 
	height: 25px; 
	border: 1px solid grey; 
	text-align: center; 
	line-height: 25px; 
}

/* <-------  pager 스타일  */

/* bulletinBoard 검색 폼 */
#notice-search-form{
	
	margin-top: 50px; 
	margin-left: 450px; 
	margin-bottom: 10px; 
}



/* bulletinBoard  스타일 ------->*/
#bulltinBoard tr{
	height: 30px; 
	line-height: 30px; 

}
	

#bulltinBoard thead th{
	border-top: 2px solid pink; 
	border-bottom: 1px solid pink; 
} 



#bulltinBoard th:FIRST-CHILD,
#bulltinBoard td:FIRST-CHILD{
	width: 60px; 
	text-align: center; 
}

#bulltinBoard th:FIRST-CHILD + th,
#bulltinBoard td:FIRST-CHILD + td{
	width: 400px; 
	text-align: center; 
}

#bulltinBoard th:FIRST-CHILD + th + th,
#bulltinBoard td:FIRST-CHILD + td + td{
	width: 100px; 
	text-align: center; 
}

#bulltinBoard th:FIRST-CHILD + th + th + th,
#bulltinBoard td:FIRST-CHILD + td + td + td{
	width: 100px; 
	text-align: center; 
}

#bulltinBoard th:FIRST-CHILD + th + th + th + th,
#bulltinBoard td:FIRST-CHILD + td + td + td + td{
	width: 60px; 
	text-align: center; 
}
/* <------- bulletinBoard  스타일 */

#write{

	margin-left: 670px;
	margin-top: 25px; 
}


#current-page-num p{
	display:block;
	text-align: right;
	margin-right: 42px; 
	margin-top: 0px; 
	
	/* position: absolute;
	left: 620px; 
	top: 140px;  */
}


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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>류윤광이 만든 최초 게시판</title>
<link href="../resource/css/reset.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<header id="header">
		<h1>류윤광이 만든 게시판</h1>
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
						<li>류윤광의 게시판</li>
					</ul>
				</section>
				
				<section id="notice-search-form">
					<h1 id="hidden">게시판 검색폼</h1>
					<form>
						<fieldset>
							<legend id="hidden">게시판 검색정보</legend>
							<label id="hidden">검색필드</label>
							<select>
								<option>제목</option>
								<option>작성자</option>
							</select>
						
							<label id="hidden">검색어</label>
							<input type="text"/>
							<input type="submit" value="검색" class="button">
						</fieldset>
					</form>
				</section>
				
				<section id="bulltinBoard">
					<h1 id="hidden">게시판 목록</h1>
					
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						
						<tbody>
							<tr>
								<td>1</td>							
								<td>2</td>							
								<td>3</td>							
								<td>4</td>							
								<td>5</td>							
							</tr>
							<tr>
								<td>1</td>							
								<td>2</td>							
								<td>3</td>							
								<td>4</td>							
								<td>5</td>							
							</tr>
						</tbody>					
					</table>
				</section>
			
				<section id="current-page-num">
					<h1 id="hidden">현재 페이지 번호</h1>
					<p>1 of 3 pages</p>
				</section>
				
				<section id="write">
					<h1 id="hidden">글쓰기</h1>
					<form>
						<a href ="regBulletinBoard"><input type="button" value="글쓰기"/></a>
					</form>
				</section>
				
				<nav id="pager">
					<h1 id="hidden">페이저</h1>
					<div><a href="">이전</a></div>
					<ul>
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">4</a></li>
						<li><a href="">5</a></li>
					</ul>
					<div><a href="">다음</a></div>
				</nav>
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