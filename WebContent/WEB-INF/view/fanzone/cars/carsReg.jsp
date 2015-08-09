<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
		<a href=""><img src="${ctxName}/resource/images/cars/whistleLogo.png" / ></a>
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
							<thead>
								<tr>
									<td align="center">경기</td>
									<td align="center">제목</td>
									<td align="center">약속장소</td>
									<td align="center">최대인원수</td>
									<td align="center">응원팀</td>
									<td align="center">남기고 싶은말</td>
								</tr>
							</thead>
			
							<tbody>
								<tr>
									<td align="center">${game.teamName1}vs${game.teamName2}</td>
									<td align="center"><input name="subject" /></td>
									<td align="center"><input name="zone" /></td>
									<td align="center"><input name="maxParticipants" /></td>
									<td align="center"><input name="cheerTeam" /></td>
									<td align="center"><input name="comment" /></td>
								</tr>
							</tbody>
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