<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- JSTL 활용방법 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@page import="java.util.Calendar"%>
<%
	request.setCharacterEncoding("utf-8");

	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH) + 1;

	String _year = request.getParameter("year");
	String _month = request.getParameter("month");

	if (_year != null)
		year = Integer.parseInt(_year);

	if (_month != null)
		month = Integer.parseInt(_month);

	now.set(year, month - 1, 1); //출력할 년도, 월로 설정

	year = now.get(Calendar.YEAR); //변화된 년, 월
	month = now.get(Calendar.MONTH) + 1;

	int end = now.getActualMaximum(Calendar.DAY_OF_MONTH); //해당월의 마지막 날짜
	int w = now.get(Calendar.DAY_OF_WEEK); //1~7(일~토)
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function LayerView() {
		layerID.style.visibility = "visible";
	}

	function LayerHiding() {
		layerID.style.visibility = "hidden";
	}
	
</script>
<style>

/* 헤더 스타일 주기 시작 */
#header h1 {
	float: left;
}

#sentence
 {
	float: left;
	position: absolute;
	top: 130px;
	left: 600px;
}

header nav a {
	position: absolute;
	top: 0px;
	left: 1260px;
}

.clearfix:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}

#hidden {
	display: none;
}
/* 헤더 스타일 주기 끝 */


/* 표 스타일 주기 시작  */

#main{
	margin-left: auto;
   	margin-right: auto;
}

#carRegChkTable{
	/* border-top: 2px solid #8cba35; */
	border-bottom: 2px solid #8cba35;
}

#carRegChkTable tr {
	height: 30px;
	line-height: 30px;
	background: #e9e9e9; 
	/* background: #CEF279; */
}

#carRegChkTable td, #carRegChkTable th {
	text-align: center;
	border-bottom: 1px #e9e9e9 solid;
	border-top: 2px solid #8cba35;
	/* border-spacing: 0px 0px 0px 0px; */
}

#carRegChkTable td:FIRST-CHILD +td+td+td{
	text-align: left;
	text-indent: 20px; 
}

#th1{ /* 게시판 id*/
	width: 50;	
}

#th2{ /* 로고 */
	width: 50pnpx;	
}

#th3{ /* 경기팀 */
	width: 200px;	
}

#th4{/* 제목 */
	width: 350px;	
}

#th5{/* 약속장소 */
	width: 200px;	
}

#th6{/* 약속날짜 */
	width: 170px;	
}

#th7{/* 참여인원 */
	width: 30px;	
}

#th8{/* 최대인원 */
	width: 30px;	
}

#th9{/* view */
	width: 30px;	
}

#th10{ /* 자세히 보기 */
	width: 100px;	
}
/* 표 스타일 주기 끝  */


/* 등록아이콘 스타일 주기  */
#enroll img{
	width: 60px;
	height: 60px;
}
#enroll p{
	position:absolute;
	left: 1400px;	
}

#

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카스 등록 실시간 현황</title>
</head>
<link href="notice.css" type="text/css" rel="stylesheet" />
<body>

	<header id="header" class="clearfix">
	
		<div>
			<h1>
				<img src="${ctxName}/resource/images/cars/whistleLogo.png" alt="뉴렉처" />
			</h1>
		</div>
	
		<div id="sentence">
			<p>
				<img src="${ctxName}/resource/images/cars/carsRegChk_P.png" />
			</p>
		</div>
		
		<nav>
			<h1 id="hidden">FanZone</h1>
			<a href="carsStart">
				<p>
					<img src="${ctxName}/resource/images/cars/carMatchPlanChk.png" />
				</p>
			</a> 
		</nav> 
	</header>


	<main id="main"> 
	<section>
	<h1>카스 등록 실시간 현황</h1>

	<!-- <fieldset style="width: 20">
			<legend> 카스 등록 현황 테이블</legend> -->
	<table id="carRegChkTable">
		<thead>
			<tr>
				<th id="th1">PartyId</th>
				<th id="th2">TeamLogo</th>
				<th id="th3">Match</th>
				<th id="th4">Subject</th>
				<th id="th5">Zone</th>
				<th id="th6">Date</th>
				<th id="th7">Current</th>
				<th id="th8">MaxParticipants</th>
				<th id="th9">Views</th>
				<th id="th10">Detail</th>
			</tr>
		</thead>

		<tbody>
			<%-- <c:forEach var="n" items="${list}"> --%>
			<c:forEach var="n" items="${partyList}">
				<tr>
					<td align="center">${n.partyId}</td>
					<td align="center">${n.supportingTeamImgPath}</td>
					<td align="center">${game.teamName1}vs${game.teamName2}</td>
					<td align="center">${n.subject}</td>
					<td align="center">${n.zone}</td>
					<td align="center"><fmt:formatDate value="${game.dateTime}"
							pattern="yyyy-MM-dd hh:mm" /></td>
					<td align="center">${n.realRegCnt}</td>
					<td align="center">${n.maxParticipants}</td>
					<td align="center">${n.clickCnt}</td>
					<td align="center"><a
						href="carsParticipate?partyId=${n.partyId}&c=${game.code}">자세히</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div id="enroll">
		<p>
			<a href="carsReg?c=${game.code}"><img src="${ctxName}/resource/images/cars/enroll2.png" /></a>
		</p>
	</div>
	<!-- </fieldset> --> </section> </main>

</body>
</html>