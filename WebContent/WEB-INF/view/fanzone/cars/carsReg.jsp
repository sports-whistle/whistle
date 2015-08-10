<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>

function changeimage() 
{
	var emblemList = document.getElementById('emblemList');
	var next = document.getElementById('next');
	var afterward = document.getElementById('afterward');
    
    if (image.src.match("naver")) {
        image.src = "https://pixabay.com/static/uploads/photo/2015/02/13/09/47/mail-634902__180.png";
    } else {
        image.src = "http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif";
    }
}


</script>

<style>

#hidden {
	display: none;
}

aside{
	width: 300px;
	height: 500px;
	border: 1px dotted blue; 
	float: left;

}

main #form{
	display:inline-block;
	border: 1px dotted blue; 
	margin-left: 200px;
	position: absolute;
	top: 50px;
}

table thead td{

	border: 1px solid black;
}

/* 등록 수정 버튼 스타일 주기 */

#regAdmin div:FIRST-CHILD+div>input{
	float: left;
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카스 등록</title>
</head>
<body>
	
	<header>
	<h1>
		<a href=""><img src="${ctxName}/resource/images/fanzone/cars/whistleLogo.png" / ></a>
	</h1>
	
	<div id="body">
		<aside>
			<h1 id="hidden">다른 카스 페이지 이동</h1>
			<ul>
				<li><a href="">FanZone</a></li>
				<li><a href="carsMatchPlanChk">경기 일정 확인</a></li>
			</ul>
		</aside>
	
		<main> 
			<section>
				<h1 id="hidden">카스 입력 정보</h1>
		
				<form id="form"  action="" method="post">
					<div>
						<table>
							<tr>
								<th align="center">경기</th>
								<td align="center">${game.teamName1}vs${game.teamName2}</td>
							</tr>
							
							<tr>
								<th align="center">제목</th>
								<td align="center"><input name="subject" /></td>
							</tr>
							
							<tr>
								<th align="center">약속장소</th>
								<td align="center"><input name="zone" /></td>
							</tr>
							
							<tr>
								<th align="center">최대인원수</th>
								<td align="center"><input name="maxParticipants" /></td>
							</tr>
							
							<tr>
								<th align="center">응원팀</th>
								<td align="center">
									<input type="button" id="next" value="다음"/>
										<p id="emblemList">
										<%-- <img src="${ctxName}/resource/images/common/emblem-ktwiz.png"/> --%>
									 <c:forEach var="emblemImgList" items="${emblemImgList}"> 
									 			emblemImgList
									 </c:forEach>
										</p>
									<input type="button" id="afterward" value="이전"/>
								</td>
							</tr>
							
							<tr>
								<th align="center">남길말</th>
								<td align="center"><input name="comment" /></td>
							</tr>
						</table>
					</div>
					
					<div id="regAdmin">
						<div>
							<input type="submit"  value="카스 등록" />
						</div>	 
							 
						 <div>
							 <input type="submit" value="수정" />
						</div>
					</div>
					
				</form>
			</section> 
		</main>
	</div>

</body>
</html>