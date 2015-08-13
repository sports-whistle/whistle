<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#pinkbody{
	background: url("../images/inCheonBack.png") no-repeat ;
}
#inUtd{
	postion: absolute;
	margin: auto;
}
#elep{
	position: relative;
	margin: auto;
	bottom: 190px;
	left: 470px;
}
#shinHan{
	position: relative;
	margin: auto;
	bottom: 340px;
	left: 870px;
}
#jumbo{
	position:relative;
	margin: auto;
	bottom: 260px;
}
#pinS{
	position:relative;
	margin: auto;
	bottom: 420px;
	left: 470px;
}
#incheonSk{
	position:relative;
	margin: auto;
	bottom: 610px;
	left:  840px;
}
</style>

</head>

<body id = "pinkbody">
	<header>
		<h1><img src="../images/whistleHeader.png"  alt="whistlelogo"></h1>
	</header>
	<main>
	
	<section>
	<h1>메인화면</h1>
	
	<nav>
	<h1>인천팀링크</h1>
		<ul>
			<li id= inUtd><a href="${ctxName}/zone/team/teamInfo"><img src="../images/inUtd.png"/>인천유나이티드</a></li>
			<li id= elep><a href="${ctxName}/zone/team/teamInfo"><img src="../images/elep.png"/>전자랜드</a></li>
			<li id= shinHan><a href="${ctxName}/zone/team/teamInfo"><img src="../images/shinHan.png"/>신한은행</a></li>
			<li id= jumbo><a href="${ctxName}/zone/team/teamInfo"><img src="../images/jumbo.png"/>대한항공</a></li>
			<li id= pinS><a href="${ctxName}/zone/team/teamInfo"><img src="../images/pinS.png"/>흥국생명</a></li>
			<li id= incheonSk><a href="${ctxName}/zone/team/teamInfo"><img src="../images/incheonSk.png"/>와이번스</a></li>
		</ul>
	</nav>
	</section>
	
	
	</main>
</body>
</html>