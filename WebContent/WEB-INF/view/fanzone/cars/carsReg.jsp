<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>

index = 0; 

window.addEventListener("load", function () {
	
	btnNext = document.getElementById("next");
	btnAfterward = document.getElementById("afterward");
	emblems = document.getElementsByTagName("img");
	
	btnNext.onclick = btnNextClick;
	btnAfterward.onclick = btnAfterWardClick;
	
	ctxName = "${ctxName}";
	teams = [];
	
	teams[0]  ="${emblemUrlInTeams.get(0).getEmblemUrl()}";
	teams[1]  ="${emblemUrlInTeams.get(1).getEmblemUrl()}";
	teams[2]  ="${emblemUrlInTeams.get(2).getEmblemUrl()}";
	teams[3]  ="${emblemUrlInTeams.get(3).getEmblemUrl()}";
	teams[4]  ="${emblemUrlInTeams.get(4).getEmblemUrl()}";
	teams[5]  ="${emblemUrlInTeams.get(5).getEmblemUrl()}";
	teams[6]  ="${emblemUrlInTeams.get(6).getEmblemUrl()}";
	teams[7]  ="${emblemUrlInTeams.get(7).getEmblemUrl()}";
	teams[8]  ="${emblemUrlInTeams.get(8).getEmblemUrl()}";
	teams[9]  ="${emblemUrlInTeams.get(9).getEmblemUrl()}";
});


function btnNextClick()
{
	if(index < 10)
	{
		emblems[1].src = ctxName + teams[++index];
	}
	else
	{
		index = 0; 
	}
}


function btnAfterWardClick()
{
	if(index > 0)
	{
		emblems[1].src = ctxName + teams[--index];
	}
	else
	{
		index = 9; 
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
								 			<img id="emblemList"/> 
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