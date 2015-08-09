<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title> Whistle </title>
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css" />
	<script type="text/javascript" src="js/prefixfree.min.js"></script>
	
	<script>
	
    /* 20150807 Ryu.YG DELETE 없어 된다고 함.. 
	if(sec>=3 && sec<5) {
	
	$("#bg bg1").removeClass();
	$("#bg bg1").addClass("bg bg8");
	} */
	
	</script>
	
	
	
<style type="text/css">
@charset "utf-8";
@import url(http://fonts.googleapis.com/css?family=Archivo+Black);

/* reset */
* { margin:0;  padding:0;}
ol,ul { list-style: none; }
a { outline:0; text-decoration:none; color:#555; }
img { border:0;}
body { font:12px/1.6 'Poiret One'; color:#555; } 
p{font-family: 'Archivo Black', sans-serif;}

/*레이아웃*/
header { position:fixed; width:200%; height:200%; background:#fff; top:0px; left:0px; transition:all 0.5s;}
nav { position:relative; width:60%; height:70px; background:black; margin-left:15%; transition:all 0.5s; margin-top: 50px;}
section { width:85%; position:relative; margin-left:15%;}
article { float:left; height:260px; transition:all 0.5s; animation:scale 1s 1;}
article:nth-child(1) { width:100%; height:500px; background:#ddd;}
article:nth-child(2) { width:40%; background:#ccc;}
article:nth-child(3) { width:20%; background:#bbb;}
article:nth-child(4) { width:20%; background:#aaa;}
article:nth-child(5) { width:20%; background:#999;}
article:nth-child(6) { width:40%; background:#888;}
article:nth-child(7) { width:20%; background:#777;}
article:nth-child(8) { width:20%; background:#666;}
article:nth-child(9) { width:40%; background:#555;}
article:nth-child(10) { width:20%;	background:#444;}
article:nth-child(11) { width:20%; background:#333;}
article:nth-child(12) { width:20%;	background:#222;}

@keyframes scale {
	0% { transform:scale(0); }	
	100% { transform:scale(1); }
}
article>div { position:relative; width:100%; height:100%; overflow:hidden; cursor:pointer; }

/* header 컨텐츠 */
header h1 { width:100px; height:100px; background:url(${ctxName}/resource/images/index/whistle-logo.png) no-repeat 0px 0px; background-size:contain; position:absolute; top:200px;	left:150%; margin-left:-90px;	text-indent:-99999px;}
#gnb { position:absolute; top:300px; right:57px;}
#gnb a { display:block; padding:8px 30px;	font-family: 'Archivo Black', sans-serif; font-size:30px; font-weight:bold; color:black; text-align:left; line-height:5.0; transition:all .5s;}
#gnb a:hover { color:skyblue;}
#gnb a i { margin-right:13px;}
.snsSet { width:100px;	height:10px;	position:absolute; bottom:50px; right:50%; margin-right:-45px;}
.snsSet a { float:left;}

/*nav*/
nav a:nth-child(1) {	position:absolute; top:5px;	right:20px; font-family: 'Archivo Black', sans-serif; font-size:15px;  color:white; font-style: italic;}
nav a:nth-child(2) {	position:absolute; top:5px;	right:120px;  font-family: 'Archivo Black', sans-serif; font-size:15px;  color:white; font-style: italic; }




article>div { position:relative; width:100%; height:100%; overflow:hidden; cursor:pointer; }



/* 배경이미지 삽입*/
article .bg1 { background-image:url(${ctxName}/resource/images/index/Inchon.jpg);}
article .bg2 { background-image:url(${ctxName}/resource/images/index/cheer1.jpg);}
article .bg3 { background-image:url(${ctxName}/resource/images/index/cheer4.jpg);}
article .bg4 { background-image:url(${ctxName}/resource/images/index/cheer5.jpg);}
article .bg5 { background-image:url(${ctxName}/resource/images/index/cheer2.jpg);}
article .bg6 { background-image:url(${ctxName}/resource/images/index/cheer7.jpg);}
article .bg7 { background-image:url(${ctxName}/resource/images/index/cheer3.jpg);}
article .bg8 { background-image:url(${ctxName}/resource/images/index/cheer9.jpg);}
article .bg9 { background-image:url(${ctxName}/resource/images/index/cars.jpg);}


/* 이미지박스 */
article .bg { background-size:cover; background-position:center center; }
article .bg span { font-size:60px; color:#fff;	position:absolute; bottom:0px; right:20px; transform:scale(10); opacity:0;	transition:all 0.6s;}
article .bg1 span { font-size:170px; font-weight:bold; bottom:-76px;	right:-6px; opacity:1; transform:scale(1); transition:all 0.5s;}

/*이미지박스 호버효과*/
article:hover .bg span { opacity:1; transform:scale(1);}
article .bg1:hover span { transform:rotateY(360deg); color:#222; }

/* 텍스트박스 */
article .txt { color:#666; background:#fff; box-sizing:border-box; padding:40px 30px; transition:all 1s;}
article:nth-child(3) .txt { background:#bff7fa;}
article:nth-child(11) .txt { background:#e3f1fb;}
article .txt i { font-size:400px;  color:#b2effc; opacity:0; position:absolute; bottom:-70px; right:-200px; transition:all 0.7s;}
article:nth-child(3) .txt i {	position:absolute; bottom:-20px; right:-15px; font-size:200px; font-weight:bold; color:#fff; opacity:0.7;}
article .txt strong { font-size:30px;	font-weight:normal; line-height:1.6;	color:#444; margin-bottom:20px; transition:all 1s;}

/*텍스트박스 호버효과*/
article:hover .txt { background:#6ce2fb;	color:#fff;}
article:hover .txt i { right:0px; opacity:0.5;}
article:hover .txt strong { color:#fff;}


@media screen and (min-width:1280px) and (max-width:1599px) {  
	
	/*레이아웃*/
	header { position:relative; width:100%; height:100px;}
	nav { width:100%; margin-left:0%;}		
	section { width:100%; margin-left:0px;}	
	
	/* header 컨텐츠 */
	header h1 { width:200px; height:200px; background-image:url(${ctxName}/resource/images/index/whistle-logo.png); top:20px; left:20px; margin-left:0px;}	
	#gnb { top:20px; right:200px;}	
	#gnb li { float:left;}
	.snsSet { bottom:20px; right:80px;}
	
}
@media screen and (min-width:1024px) and (max-width:1279px) {  
	
	/*레이아웃*/
	header { position:relative; width:100%; height:80px;}
	nav { width:100%; margin-left:0%;}		
	section { width:100%; margin-left:0px;}		
	article:nth-child(1) { width:75%;}	
	article:nth-child(2) { width:25%;}	
	article:nth-child(3) { width:25%;}	
	article:nth-child(4) { width:25%;}	
	article:nth-child(5) { width:25%;}	
	article:nth-child(6) { width:50%;}	
	article:nth-child(7) { width:50%;}	
	article:nth-child(8) { width:25%;}	
	article:nth-child(9) { width:25%;}	
	article:nth-child(10) { width:50%;}	
	article:nth-child(11) { width:25%;}	
	article:nth-child(12) { width:25%;}
	
	/* header 컨텐츠 */
	header h1 { width:200px;	height:100px;	background-image:url(../img/Whistlelogo.png);	top:20px;	left:20px;	margin-left:0px;}
	#gnb { top:20px; right:30px;}	
	#gnb li { float:left;}	
	.snsSet {	display:none;}
}
@media screen and (min-width:780px) and (max-width:1023px) {  
	
	/*레이아웃*/
	header { position:relative; width:100%; height:80px;}
	nav { width:100%; margin-left:0%;}		
	section { width:100%; margin-left:0px;}		
	article:nth-child(1) { width:100%;	height:400px;}	
	article:nth-child(2) { width:66.6666%;}	
	article:nth-child(3) { width:33.3333%;}	
	article:nth-child(4) { width:33.3333%; display:none;}	
	article:nth-child(5) { width:33.3333%;}	
	article:nth-child(6) { width:66.6666%;}	
	article:nth-child(7) { width:66.6666%; display:none;}	
	article:nth-child(8) { width:33.3333%;}	
	article:nth-child(9) { width:33.3333%;}	
	article:nth-child(10) { width:66.6666%; display:none;}	
	article:nth-child(11) { width:33.3333%;}	
	article:nth-child(12) { width:33.3333%; display:none;}
	
	/* header 컨텐츠 */
	header h1 { width:200px;	height:100px;	background-image:url(../images/Main/Whistle.png); top:20px; left:20px; margin-left:0px;}	
	#gnb { top:20px; right:10px;}	
	#gnb li { float:left;}	
	#gnb a { padding:10px 10px;}		
	.snsSet { display:none;}	
}
@media screen and (min-width:640px) and (max-width:779px) {  
	
	/*레이아웃*/
	header { position:relative; width:100%; height:80px;}
	nav { width:100%; margin-left:0%;}		
	section { width:100%; margin-left:0px;}		
	article:nth-child(1) { width:100%;	height:400px;}
	article:nth-child(2) { width:100%;}	
	article:nth-child(3) { width:33.3333%; display:none;}	
	article:nth-child(4) { width:100%;	display:none;}	
	article:nth-child(5) { width:50%;}	
	article:nth-child(6) { width:50%;}	
	article:nth-child(7) { width:66.6666%; display:none;}	
	article:nth-child(8) { width:50%;}	
	article:nth-child(9) { width:50%;}	
	article:nth-child(10) { width:66.6666%; display:none;}	
	article:nth-child(11) { width:50%;}	
	article:nth-child(12) { width:50%;}	
	
	/* header 컨텐츠 */
	header h1 { width:200px;	height:100px;	background-image:url(../images/Main/Whistle.png); top:20px; left:20px; margin-left:0px;}	
	#gnb { top:20px; right:10px;}	
	#gnb li { float:left;}	
	#gnb a { padding:10px 10px;}	
	.snsSet { display:none;}	
	
}
@media screen and (min-width:480px) and (max-width:639px) {  
	
	/*레이아웃*/
	header { position:relative; width:100%; height:130px;}	
	nav { display:none;}
	section { width:100%; margin-left:0px;}
	article { height:150px;}		
	article:nth-child(1) { width:100%; height:300px;}		
	article:nth-child(2) { width:100%;}	
	article:nth-child(3) { width:33.3333%; display:none;}	
	article:nth-child(4) { width:100%;	display:none;}	
	article:nth-child(5) { width:50%;}	
	article:nth-child(6) { width:50%;}	
	article:nth-child(7) { width:66.6666%; display:none;}	
	article:nth-child(8) { width:50%;}	
	article:nth-child(9) { width:50%;}	
	article:nth-child(10) { width:66.6666%; display:none;}	
	article:nth-child(11) { width:50%;}	
	article:nth-child(12) { width:50%;}	
	
	/* header 컨텐츠 */
	header h1 { position:relative; top:20px; left:0px; width:200px; height:100px; background-image:url(../img/Whistle.png); margin:0px auto;}
	#gnb { width:100%; height:40px; top:80px; right:0px;}	
	#gnb li { float:left; width:25%;}	
	#gnb a { padding:4px; text-align:center;}	
	.snsSet { display:none;}	
	
	article .bg1 span { font-size:120px; bottom:-50px;}	
	article .txt strong { font-size:25px;}
	article .txt em { display:none;}		
	
}
@media screen and (max-width:479px){

	/*레이아웃*/
	header { position:fixed; width:200%; height:100px; background-color:transparent; z-index:5;}
	nav { display:none;}	
	section { width:100%; margin-left:0px; z-index:4;}		
	article { display:none;}
	article:nth-child(1) { display:block; position:fixed; width:100%; height:100%;}	
	
	/* header 컨텐츠 */
	header h1 { top:200px; width:100px; margin-left:-70px;}	
	#gnb { width:250px; top:140px; right:50%; margin-right:-125px;}	
	#gnb a { width:100%; background:#000; box-sizing:border-box; margin:8px 0px; border-radius:10px; opacity:0.5; color:#fff;}	
	#gnb a:hover { opacity:1; transform:scale(1.1);}
	
	article:nth-child(1) span { display:none;} 
	
	
	
	
	</style>
	
	
	
</head>

<body>
	<header>
		<h1><img src="${ctxName}/resource/images/index/whistle.png" /></h1>
		<ul id="gnb">
		
			<li><a href="#"><i class=""></i>About US</a></li>
			<li><a href="#"><i class=""></i>Zone</a></li>
			<li><a href="${ctxName}/resource/dj/prc/FanZone-Main2.jsp"><i class=""></i>FanZone</a></li>
			<li><a href="#"><i class=""></i>Freedom</a></li>	
		</ul>		

		<div class="snsSet">
			<a href="#"><img src="${ctxName}/resource/images/index/sns1.png" alt="about" /></a>
			<a href="#"><img src="${ctxName}/resource/images/index/sns2.png" alt="contact" /></a>
			<a href="#"><img src="${ctxName}/resource/images/index/sns3.png" alt="facebook" /></a>
			<a href="#"><img src="${ctxName}/resource/images/index/sns4.png" alt="twitter" /></a>
			<a href="#"><img src="${ctxName}/resource/images/index/sns5.png" alt="etc" /></a>
		</div>
	</header>
	
	<nav>
	
		<a href="${ctxName }/basic/login"><img src="${ctxName}/resource/images/index/loginlogo.png" alt="Login" /><span>Login</span></a>
		<a href="#"><img src="${ctxName}/resource/images/index/Joinuslogo.png" alt="Join us" /><span>Join us</span></a>
	
	</nav>
	
	<section>
		<article>			
			<div class="bg bg1">		
				<span>Incheon</span>
			</div>			
		</article>
		
		<article>		
			<div class="bg bg8">
		<span>Fun</span>
			</div>	
		</article>
		
		<article>			
			<div class="bg bg9">	
		<span>Cars</span>
			</div>	
		</article>
		
		
		<article>
			<div class="bg bg2">
				<span>Zone</span>
			</div>	
		</article>
		
		<article>
			<div class="bg bg3">
				<span>Sports</span>
			</div>	
		</article>
		
		<article>	
		<div class="txt">
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>The Teams Because The Fans!</strong><br />
					<em>The hero.<br />
					Your enjoyment is near.</em>
				</p>
		</article>
		
		<article>
			<div class="bg bg4">
				<span>Cheer</span>
			</div>
		</article>
		
		<article>	
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<strong>Just For You!</strong><br />
				<em> The hero. <br />
				Wait for your support.</em>
			</div>	
		</article>
		
		<article>		
			<div class="bg bg5">
				<span>Fan</span>
				<span>Fan</span>
			</div>
		</article>
		
		<article>	
			<div class="bg bg6">
				<span>Sports<br>Zone</span>
			</div>	
		</article>
		
		<article>
			<div class="txt">	
				<i class="fa fa-arrow-right"></i>
				<p>
					<strong>Open Space</strong><br />
					<em>We Can show you the Sports World</em>
				</p>
			</div>	
		</article>
		
		<article>	
			<div class="bg bg7">
				<span>Fighting</span>
			</div>		
		</article>
		
	</section>

</body>
</html>
