<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EnjoySportsTogether</title>
</head>
<style>

.hidden{
   display:none;
}
.wrap{
   position:fixed; 
   width:102%; 
   height: 100%; 
   min-width: 1048px; 
   min-height: 500px;
   background:url("${ctxName}/resource/images/fanzone/est.png") no-repeat center;
   background-size:cover;
}
.main{
   height:640px;
}   
.link img{
   width: 150px;
}
.link{
   height: 100px;
}
#header{
   height: 100px;
}
#LinkEnjoy{
   float: left;
   margin-left: 150px;
   margin-top: 620px; 
}
#LinkSports{
   float: left;
   margin-left: 290px;
   margin-top: 620px; 
}
#LinkTogether{
   float:left;
   margin-left: 270px;
   margin-top: 620px; 
}
ul{
list-style: none;
}



/* ---------- */
/* #fanEnjoy{
	width: 350px;
	height: 1000px;
	background: blue;
	float:left;'
	}
#fanSports{
	width: 350px;
	height: 1000px;
	background: beige;
	float: left;
}
#fanTogether{
	width: 350px;
	height: 1000px;
	background: red;
	float: left;
} */
</style>

<script>

window.addEventListener("load", function name() {
	
	var fanEnjoy = document.getElementById("LinkEnjoy");
	var fanSports = document.getElementById("LinkSports");
	
	fanEnjoy.onclick = function (event) {
		
		alert("죄송합니다ㅜㅜ 서비스 준비중입니다");
		event.preventDefault();
	};
	
	fanSports.onclick = function (event) {
		
		alert("죄송합니다ㅜㅜ 서비스 준비중입니다");
		event.preventDefault();
	};
});
</script>
<body>
   <div class = "wrap">
   <header id = "header">
      <h1><a href=""/><img src="${ctxName}/resource/images/fanzone/Whistle-logo.png"  ></h1>
   </header>
   <main class="main">
      <section>
      <h1 class="hidden" >mainbackground</h1>      
      
      </section>
   </main>   
   <aside class="link">
         <nav id = "LinkEnjoy">
            <h1 class="hidden">Enjoy</h1>
            <p id="FMcamera"><img src="${ctxName}/resource/images/fanzone/FMcamera.png"></p>
         </nav>

         <nav id = "LinkSports">
            <h1 class="hidden">Sports</h1>
            <p><img src="${ctxName}/resource/images/fanzone/FMbook.png"></p>
         </nav>
         
         <nav id = "LinkTogether">
            <h1 class="hidden">Together</h1>
            <p><img src="${ctxName}/resource/images/fanzone/FMcar.png"></p>
         </nav>
         </aside>
         </div>
</body>
<%-- <body>
	<!-- <header>
		<h1>Whistle(로고)</h1>
	</header> -->

	<main>
		<section>
			<h1>EnjoySportsTogether 기능</h1>

			<nav id = fanEnjoy>
				<h1>Enjoy</h1>
					<p><a href="">Enjoy</a></p>
			</nav>

			<nav id = fanSports>
				<h1>Sports</h1>
				<p><a href="">Sports</a></p>z
			</nav>
			
			<nav id = fanTogether>
				<h1>Together</h1>
				<p><a href="${ctxName}/resource/fanzone/cars/carsStart">Together</a></p>
			</nav>
		</section>
	</main>
</body> --%>
<!-- temp -->
</html>
