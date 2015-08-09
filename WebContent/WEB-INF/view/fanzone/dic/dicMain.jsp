<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KFTW-Main</title>
</head>
<style>
.hidden{
	display:none;
}

/* #know{
 	margin:auto;
	position:relative;
	bottom: 200px;
	left: 180px;
}
#fanLink{
	margin:auto;
	position:relative;
	bottom: 520px;
	left: 950px;
}
#wb{
	margin:auto;
	position: relative;
	bottom: 460px;
	left: 660px;
}
#SL{
	margin:auto;
	position: relative;
	bottom: 670px;
	left: 990px;
}
#sc{
	margin:auto;
	position: relative;
	bottom: 540px;
	left: 30px;
}
#bs{
	margin:auto;
	position: relative;
	bottom: 790px;
	left: 270px;
}
#bk{
	margin:auto;
	position: relative;
	bottom: 1000px;
	left: 510px;
}
#vb{
	margin:auto;
	position: relative;
	bottom: 1230px;
	left: 790px;
}
ul{
list-style: none;
}  */
.logo{
	float:left;
	margin-top:1px;
	padding-bottom:24px;
}
.wrap{
	position:fixed; width:100%; height: 100%; min-width: 1024px; min-height: 710px;
	background: url("../images/KFTW-Main-bg.png") no-repeat center bottom; 
	background-size:cover;
}
.body{
	height:500px;
	line-height:30px;
}
#header{
	height:100px;
}

#know{
 	 float:left;
}
#fanLink{
	float:right;
	padding-right:20px;
}
#wb{
	float:left;
	padding-left: 720px;
	margin-top:20px;
}
#SL{
	float:left;
	margin-top:42px;
	padding-left: 70px;
}

#sc{
	float: left;
	padding-left:100px;
}
#bs{
	float: left;
	padding-left: 100px;
}
#bk{
	float: left;
	padding-left: 100px;
}
#vb{
	float: left;
	padding-left: 100px;
} 
ul{
list-style: none;
text-align:center;
}
</style>


<body>
	<div class ="wrap">
	<header id ="header">
	 <h1 class ="logo"><img src="${ctxName}/resource/images/Whistle logo.png"/></h1>
	 <section>
	 <h1 class="hidden">머리말</h1>
	 <p id="know"><img src="${ctxName}/resource/images/know.png"></p>
	 <nav>
	 
	 <h1 class="hidden">팬존링크</h1>
	 <ul>
	 	<li id="fanLink"><img src="${ctxName}/resource/images/fanzonelo.png"></li>
	 </ul>
	 </nav>
	 
	 </section>
	</header>
	<main>
	<div class = "body">
	<section>
	<h1 class="hidden">링크</h1>
	<nav>
	<h1 class="hidden">보드전술</h1>
		<ul>
			<li id ="wb"><img src="${ctxName}/resource/images/WhiteBoard.png"></li>
			<li id="SL"><img src="${ctxName}/resource/images/Strategylogo.png"></li>
		</ul>
		
	</nav>
	</div>
	
	
	 		 
         <nav>
            <h1 class="hidden">용어링크</h1>
            <ul>
               <li id="sc"><a href=""/><img src="${ctxName}/resource/images/soccer.png"></li>
               <li id="bs"><a href=""/><img src="${ctxName}/resource/images/baseball.png"></li>
               <li id="bk"><a href=""/><img src="${ctxName}/resource/images/basketball.png"></li>
               <li id="vb"><a href=""/><img src="${ctxName}/resource/images/volleyball.png"></li>
			 </ul>
               
         </nav>
      
		</section>
		
		
			
	
	
	
	


	</main>
</div>
</body>
</html>