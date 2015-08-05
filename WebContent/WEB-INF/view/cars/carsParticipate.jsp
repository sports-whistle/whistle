<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#hidden {
	display: none;
}

table{
	border: 1px solid red; 

}

thead{
	border: 1px solid black;  
}

thead tr{
	height: 200px; 
}

thead th:FIRST-CHILD,
thead th:FIRST-CHILD+th,
thead th:FIRST-CHILD+th+th,
thead th:FIRST-CHILD+th+th+th {
	width: 100px;
	height: 130px; 
	border: 1px solid blue;  

}

 thead th:FIRST-CHILD+th+th+th+th
{
	width: 100px;
	height: 200px; 
	border: 1px solid lime; 
} 

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카스 참여</title>
</head>
<body>
	<header>
	<h1>
		<img src="../resource/images/cars/whistleLogo.png" alt="뉴렉처" />
	</h1>

	<main> <section>
	<h1 id="hidden">카스 참여</h1>

	<!-- <fieldset style="width: 20"> -->
	<form action="" method="post">
		<!-- <legend> 카스 등록 상세 정보</legend> -->
		<table>
			<thead>
				<tr>
					<th>경기팀</th>
					<th>제목</th>
					<th>약속날짜</th>
					<th>최대인원</th>
					<div id="cheerUp">
						<th>응원팀</th>
					</div>
					<th>남길말</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>${party.supportingTeamImgPath }</td>
					<td>${game.teamName1}vs${game.teamName2}</td>
					<td>${party.subject}</td>
					<td>${game.dateTime}</td>
					<td>${party.maxParticipants }</td>
					<td>${party.comment }</td>
				</tr>
			</tbody>
		</table>
		<%-- <dl>
					<li>${party.supportingTeamImgPath }</li>
					<li>${game.teamName1}vs${game.teamName2}</li>
					<li>${party.subject }</li>
					<li>${game.dateTime}</li>
					<li>${party.maxParticipants }</li>
					<li>${party.comment }</li>
				</dl> --%>
		<p>
			<a href="carsRegChk?partyId=${party.partyId}&c=${game.code}&y=yes">참여하겠습니다!</a>
			<!-- 현재인원 증가 -->
			<a href="carsRegChk?partyId=${party.partyId}&c=${game.code}&n=no">다른
				카스일정 볼께요!</a>
			<!-- 현재인원 증가 -->
		</p>

	</form>
	<!-- </fieldset> --> </section> </main> <aside>
	<h1>다른 카스 페이지 이동</h1>
	<ul>
		<li><a href="">FanZone</a></li>
		<li><a href="carsMatchPlanChk">경기 일정 확인</a></li>
	</ul>
	</aside>
</body>
</html>