<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Information</title>
<style type="text/css">
#back{
	background: url("../images/inUbackground.png") no-repeat 320px center;
	background-size: 90% 90%
}
 #yes{
	position: absolute;
	margin: auto;
	top: 150px;
	left: 10px;
}
#no{
	position: relative;
	margin: auto;
	top: 80px;
	left: 750px;
}
#logo{
	position: absolute;
	top: 580px;
	left: 480px;
}
#teamS{
	float: right;
	margin: auto;
}
#matchInf{
	float: left;
	margin: auto;
}
#ticket{
	float: left;
	margin:left;
}
#news{
	float: right;
}

</style>
</head>
  <body id ="back">
	
	<header id ="header" >
		<h1 id="yes"><img src="../images/whistleHeader.png"  alt="whistlelogo"></h1>
		<nav>
		<h1>슬로건</h1>
		<ul id="no">
			<li><img src="../images/PlayTogether.png"  alt="slogan"></li>
		</ul>
		</nav>
	</header> 
	
	<main>
		<section>
		<h1>메인화면</h1>
		<nav id="logo">
		<h1>인천유나이티드 로고</h1>
			<ul>
				<li><img src="../images/inULogo.png" alt="teamlogo"></li>
			</ul>
		</nav>
		
		<div>
				<nav id="teamS">
				<h1>team information</h1>
				<ul>
					<li><img src="../images/teamSelect.png" alt="teamS"></li>
				</ul>		
				</nav>
			
			<nav id="matchInf">
			<h1>stadium information</h1>
				<ul>
					<li><img src="../images/matchInf.png" alt="matchInf"></li>
				</ul>		
			</nav>
			
			<nav id="ticket">
			<h1>ticket information</h1>
				<ul>
					<li><img src="../images/ticket.png" alt="ticket"></li>
				</ul>		
			</nav>
			
			<nav id="news">
			<h1>news information</h1>
				<ul>
					<li><img src="../images/news.png" alt="news"></li>
				</ul>		
			</nav>
		
	   </div>
		</section>
		
		
		
		
		
		
		
		</section>			
	</main>
	
</body>
</html>