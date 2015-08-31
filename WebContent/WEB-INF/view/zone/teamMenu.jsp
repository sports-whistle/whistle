<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Information</title>
<style type="text/css">
.hidden{
   display:none;
}
.wrap{
   position:fixed; 
   width:100%; 
   height: 100%; 
   background: url("../images/inUbackground.png") no-repeat ;
   background-size: 100% 92%;;
}
.main{
   height:750px;
}
#header{
   height:80px;
   background-color:black;
}
#yes{
   float:left;
}
.no{
   float:right;
}
.no img{
   width:300px;
}
.imagesone{
   height:250px;
}
.imagesone img{
   width: 300px;
}
.imagestwo{
   height:250px;
}
.imagestwo img{
   width:300px;
}
.logo{
   width:250px;
   height: 250px;
   margin-left: 500px;
}
#teamS{
   float:left;
   margin-top: 100px;
   padding-right: 100px;
}
#matchInf{
   float:left;
}
#ticket{
   float:left;
   margin-left: 250px;
}
#news{
   float:left;
   margin-left: 100px;
}
#aside{
   height:80px;
   background-color:black;
}
ul{
list-style: none;
}
</style>
</head>
<div class = "wrap">
  <body>
   
   <header id ="header" >
      <h1 id="yes"><img src="../images/whistleHeader.png"  alt="whistlelogo"></h1>
      <nav>
      <h1 class="hidden">슬로건</h1>
      <ul class="no">
         <li><img src="../images/PlayTogether.png"  alt="slogan"></li>
      </ul>
      </nav>
   </header> 
   
   <main class="main">
      
      
      
      <section>
      <h1 class="hidden">메인화면</h1>
      
      
      
      
      <div class="imagesone">
            <nav id="teamS">
            <h1 class= "hidden">team information</h1>
            <ul>
               <li><img src="../images/teamSelect.png" alt="teamS"></li>
            </ul>      
            </nav>
         
         <nav id="matchInf">
         <h1 class= "hidden">stadium information</h1>
            <ul>
               <li><img src="../images/matchInf.png" alt="matchInf"></li>
            </ul>      
         </nav>
      </div>
      
      <nav class="logo">
      <h1 class= "hidden">인천유나이티드 로고</h1>
         <ul>
            <li><img src="../images/inULogo.png" alt="teamlogo"></li>
         </ul>
      </nav>
      
      <div class="imagestwo">
         <nav id="ticket">
         <h1 class= "hidden">ticket information</h1>
            <ul>
               <li><img src="../images/ticket.png" alt="ticket"></li>
            </ul>      
         </nav>
         
         <nav id="news">
         <h1 class= "hidden">news information</h1>
            <ul>
               <li><img src="../images/news.png" alt="news"></li>
            </ul>      
         </nav>
      </div>
      
      </section>
   </main>
   <aside id="aside">
   <h1 class="hidden">색깔bar</h1>
   </aside>
   </div>
   
</body>
</html>
