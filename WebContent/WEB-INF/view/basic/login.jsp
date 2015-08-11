<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link href="${ctxName }/resource/css/reset.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>

<style>

	.hidden{
	display:none;
	}
	
	.content-wrapper{
		
		width:100%;
	}
	
	
	
	
	#login-section{
		display:block;
		width:1152px;
		height:250px;
		
		
		background:white;
		position:relative;
		
		
		
		margin-left:auto;
		margin-right:auto;
	}
	
	
	
	
	#login-label{
		border:0px;
		text-indent:-100px;
		display:inline-block;
		overflow:hidden;
	
		width:217px;
		height:67px;
		
		background: url("${ctxName}/resource/images/loginPage/login-label.png") no-repeat center;
	}
	
	#label-id{
		border:0px;
		text-indent:-100px;
		display:inline-block;
		overflow:hidden;
	
		width:58px;
		height:35px;
		
		background: url("${ctxName}/resource/images/loginPage/login-form-label-id.png") no-repeat center;
	}
	
	
	#label-password{
		border:0px;
		text-indent:-100px;
		display:inline-block;
		overflow:hidden;
	
		width:211px;
		height:36px;
		
		background: url("${ctxName}/resource/images/loginPage/login-form-label-pwd.png") no-repeat center;
	}
	
	
	
	
	#input-set input[type="text"]{
		width:318px;
		height:66px;
		border:0px;
		
		font-size:30px;
		/* padding-left:10px; */
		text-indent:20px;
		
		background: url("${ctxName}/resource/images/loginPage/login-form-input-text.png") no-repeat center;
	}
	

	
	#login-page-description{
		
		
		width:inhert;
		height:720px;
		background: url("${ctxName}/resource/images/loginPage/bg-login-page.png") right top;
		background-size:cover;
	}
	
	
	#login-btn{
	border:0px;
	text-indent:-999px;
	display:inline-block;
	overflow:hidden;
	
	cursor:pointer;
	width:142px;
	height:150px;
	background: url("${ctxName}/resource/images/loginPage/login-form-input-submit.png") no-repeat center;
	}
	
	
	
	#description1{
	font-family: Arial Black, san-serif;
	font-style:italic;
	font-size:35pt;
	
	}
	
	#description2{
	font-family: Arial Black, san-serif;
	font-style:italic;
	font-size:30pt;
	float:right;
	margin-top:100px;
	}
	
	
	/* Position elements*/
	
	#login-label{
	position:absolute;
	left:51px;
	top:71px;
	}
	
	#label-id{
	position:absolute;
	left:388px;
	top:46px;
	}
	
	
	#label-password{
	position:absolute;
	left:317px;
	top:130px;
	}
	
	
	
	
	#input-id{
	position:absolute;
	left:555px;
	top:30px;
	}
	
	#input-pwd{
	position:absolute;
	left:555px;
	top:117px;
	}
	
	
	#login-btn{
	position:absolute;
	left:942px;
	top:36px;
	}
	
 	#inspire-sentence1{
	font-family: Arial Black, san-serif;
	font-style:italic;

	font-height:40px;
	
	position:absolute;
	top:200px;
	left:930px;
	} 
	
	#inspire-sentence2{
	font-family: Arial Black, san-serif;
	font-style:italic;

	font-height:40px;
	
	position:absolute;
	top:230px;
	left:950px;
	} 
	
</style>
</head>
<body>

	<div class="page-limiter">
	<div id="for-page-height"></div>
	<header>
		<h1 class="hidden">log-in page</h1>
	</header>
	
	<main>
		<section>
		<div class="content-wrapper">
			<h1 class="hidden">login-main</h1>
			
			<section id="login-section">
				<h1 class="hidden">login-body</h1>		
					<p id="login-label">login</p>
					
					<form action="${ctxName}/j_spring_security_check" method="post" id="login-form">
						<div id="input-set">
						<label id="label-id">ID</label><input id="input-id" type="text" name="j_username"/>
						<label id="label-password">Password</label><input id="input-pwd" type="text" name="j_password"/>
						</div>
						<input id="login-btn" type="submit" name="btn" value="login"/>
						<p id="inspire-sentence1">Want a Sports Zone?</p>
						<p id="inspire-sentence2">Join us now</p>
					</form>
					
			</section>
			
			
			
			<section id="login-page-description">
				
				<h1 class="hidden">attractive</h1>
					<p id="description1">Which team do you want?</p>
					<p id="description2">Together, Let's make a sporting world</p>
				
			</section>
		
		</div>
		</section>
	</main>
	</div>

</body>
</html>