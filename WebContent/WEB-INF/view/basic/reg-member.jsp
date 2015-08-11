<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


<link href="${ctxName }/resource/css/reset.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>

<style>
	.hidden{
		display:none;
	}

	body{
		
		
		font-family:"Arial Black", Gadget, sans-serif;
		font-height:40px;
		color:#FFFFFF;
		background:black;
	}


	.content-wrapper{
		width:1152px;
		
		margin-left:auto;
		margin-right:auto;
		
		background:black;
	}
	
	
	#main-body{
	display:block;
	width:auto;
	height:auto;
	
	
	}
	
	
	
	#left-of-page{
		display:inline-block;
		float:left;
		
		width:576px;
		height:730px;
		
	
	}
	
	#logo{
		
		text-indent:-9999px;
		
		width:171px;
		height:130px;
		background: url(${ctxName }/resource/images/whistle-logo.png) no-repeat center;
		background-size:cover;
	}
	
	#circle-image{
		text-indent:-9999px;
		width:576px;
		height:600px;
		background: url(${ctxName}/resource/images/reg-member/circle-image.png) no-repeat center;
		background-size:cover;
	}
	
	
	#right-of-page{
		display:inline-block;
		float:left;
		
/* 		width:400px; */
		height:auto;
		margin-top:100px;
		
		
		
		
		 border-radius: 25px;
  		 border: 2px solid #FFFFFF;
  		 padding: 20px; 
  		 
  		 padding-right:30px;
  	 
	}
	

	.clearfix:after{
		content: " ";
	    display: block;
	    height: 0;
	    clear: both;
	    overflow: hidden;
	    visibility: hidden;
	}
	
	
	#reg-form label{
	display:block;
	font-size:17pt;
	
	margin-top:4px;
	}
	
	#reg-form input{
	display:block;
	font-size:20pt;
	
	
	width:400px;
	
	margin-left:12px;
	
	border:0px;
	
	
	
	}
	
	
	#reg-form input[type="submit"]{
	display:block;
	font-size:20pt;
	text-indent:-9999px;
	
	margin-top:14px;
	
	margin-left:auto;
	margin-right:auto;
	
	width:40px;
	height:40px;
	
	
	border:0px;
	background: url(${ctxName}/resource/images/reg-member/circle.png) no-repeat center;
	background-size:cover;
	}
	
	
	#reg-form input[type="submit"]:hover{
		cursor:pointer;
	}
	
	
	#page-attraction{
		display:block;
		width:inherit;
		height:auto;
	
	}
	
	#p1{
		display:block;
		font-size:30pt;
		font-weigth:bold;
	
	}
	
	
	#p2{
	display:block;
	font-size:25pt;
	font-weigth:bold;
	float:right;
	}

</style>

</head>
<body>

	<header>
		<section>
			<h1 class="hidden">Member Registry Page</h1>
		
		</section>	
	</header>

	<main>
	<div class="content-wrapper">
		<section>
			
			
			
			<div id="main-body">
			
			<div id="left-of-page">
			<nav id="logo">logo</nav>
			<div id="circle-image">circle-image</div>
			</div>
			
		
			<section class="clearfix">
				<div id="right-of-page" >
				<h1 class="hidden">registry form</h1>
				
					<form action="" id="reg-form" method="post">
						<label>ID</label><input name="uid"/>
						<label>Password</label><input name="pwd"/>
						<label>Password Confirmation</label><input name="rePwd"/>
						<label>Email</label><input name="email"/>
						<label>Cell Phone Number</label><input name="phone"/>
						<label>My Team</label><input name="myTeam"/>
						<label>Kakao ID</label><input name="kakaoId"/>
						<input type="submit"/>
					</form>
				
				</div>
			</section>
			
			</div>
			
		
			<section id="page-attraction">
				<p id="p1">Do you have sports zone?</p>
				<p id="p2">Where is it?</p>
			</section>
		
		</section>
	</div>
	</main>




</body>
</html>