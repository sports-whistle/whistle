<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Lobster);

/*--------------------- header 영역 */
header{

	/* border: 1px solid black; */
}

header nav {

	float: left; 
	width: 500px;
	height: 300px; 
}

header nav:FIRST-CHILD+nav{

	position: absolute;
	top: 100px;
	left: 700px;
}

header nav:FIRST-CHILD+nav+nav{

	position: absolute;
	top: 0px;
	left: 1400px;	
}

header nav:FIRST-CHILD+nav+nav>img{

	 width: 200px; 
}
/*------------------------------- */


/*------------- body 스타일   */
#body{
	/* border: 3px solid green; */
	display: block;
    padding-top: 100px;  
	/* margin-top: 100px; */
}

#body aside ul{

	float: left; 
	position: static;
	top: 500px; 
	list-style: none;
}
/*------------------------*/

#participate{

	display: block;
	/* border: 1px solid red; */
	padding-left: 500px;
}



/*----------------- 테이블 스타일 */
table {
	border: 1px solid black;
}

thead {
	/* border: 1px solid black; */
}

thead tr {
	height: 200px;
}

thead td:FIRST-CHILD+td{

	text-align: left;
	
}


thead th:FIRST-CHILD, thead th:FIRST-CHILD+th, thead th:FIRST-CHILD+th+th,
	thead th:FIRST-CHILD+th+th+th {
	width: 100px;
	height: 130px;
	/* border: 1px solid blue; */
	
}

thead th:FIRST-CHILD+th+th+th+th {
	width: 100px;
	height: 200px;
	/* border: 1px solid lime; */
}

tbody td{
	text-align: center;
}


tbody td:FIRST-CHILD+td {
	text-align: left;
	text-indent: 20px; 
}

form{
	
	display:inline-block;
	/* border: 1px solid blue; */ 
}

form p{

	/* border: 1px solid black; */ 
}

/*------------------------ */


/*-------------- aside 스타일 */
article{
	/* border: 1px solid blue;  */
	display: inline-block;
}

aside{
	width: 300px;
	height: 800px;
	/* background: yellow; */
	border: 1px dotted blue;
	float: left; 
	position: relative;
}
/*------------------------*/




/*---------------공통 스타일 */
#hidden {
	display: none;
}

.clearfix:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}
/*------------------------*/

#apply{
	margin-left: 50px;
	margin-top:70px;
	/* border: 1px solid black; */
	display: inline-block;
	/* position: relative; */
}

#apply div{
	
	float: left;
	width:200px; 
	height:100px;
	/* border: 1px solid black; */
	line-height: 100px; 
	text-align: center; 
	/* padding-left: 100px;  */
}

#apply div:FIRST-CHILD+div{
	
	margin-left: 100px;
}

/* together 스타일 적용 */
#body ul li:FIRST-CHILD+li img{
	width: 200px;
	height: 200px; 
	position: absolute;
	top:600px;
}

#chk p{
	font-family: 'Lobster', cursive;
	font-size: 70pt;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카스 참여</title>
</head>
<body>
	<header class="clearfix">
	 
		<nav>
			<a href=""><img src="../resource/images/cars/whistleLogo.png" / ></a>
		</nav>
		
		<nav id="chk">
			<!-- <img src="../resource/images/cars/carMatchPlanChk.png" /> -->
			<p>come with me</p>
		</nav>
			
		<nav>
			<img src="../resource/images/cars/fanZone.png" />
		</nav>
		
	</header>
	
	<div id="body">
		<aside>
			<h1 id="hidden">다른 카스 페이지 이동</h1>
			<ul>
			
				<li>
					<a href="carsMatchPlanChk">
						<img src="../resource/images/cars/carMatchPlanChk.png" />
					</a>
				</li>
				
				<li>
					<img src="../resource/images/cars/carsApply-together.png" />
				</li>
			</ul>
		</aside>
		
		<main  class="clearfix"> 
			<section id="participate" class="clearfix">
			<h1 id="hidden">카스 참여</h1>
		
				<div>
					<form action="" method="post">
						<table>
							<thead>
								<tr>
									<th>경기팀</th>
									<th>제목</th>
									<th>약속날짜</th>
									<th>최대인원</th>
									<th>응원팀</th>
									<th>남길말</th>
								</tr>
							</thead>
				
							<tbody>
								<tr>
									<td>${game.teamName1}vs${game.teamName2}</td>
									<td>${party.subject}</td>
									<td>${game.dateTime}</td>
									<td>${party.maxParticipants }</td>
									<td>${party.supportingTeamImgPath }</td>
									<td>${party.comment }</td>
								</tr>
							</tbody>
							
						</table>
					</form>
				</div>
				
				<div id="apply">
					<div>
						<a href="carsRegChk?partyId=${party.partyId}&c=${game.code}&y=yes">
							<img src="../resource/images/cars/yes.png" />
						</a>
					</div>
					
					<div>					
						<a href="carsRegChk?partyId=${party.partyId}&c=${game.code}&n=no">
							<img src="../resource/images/cars/no.png" />
						</a>
					</div>
				</div>
				
			</section> 
		</main>
	
	</div>

</body>
</html>