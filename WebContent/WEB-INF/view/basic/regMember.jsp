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
		
		/* background:black; */
		
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
	
/* 	#next 
	{
		width: 50px; 
		background:red; 
	} */
	
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


/* ======  [류윤광] 스포츠 종목별 팀선택 스타일 적용 ===== */

#teamSelect{
	/* border: 1px solid purple; */
}

/* 콤보박스 영역 스타일*/
#teamSelect div:FIRST-CHILD{

	display:inline-block;
	/* height: 50px;  */
	/* border: 2px solid green; */
	background: green;
	margin-left:50px; 
	margin-bottom: 25px; 
	vertical-align: middle;
		
}

/* 콤보박스 스타일 */
select{

	float: left;
}


/* 버튼, 엠블럼 표시 부분 영역 */
#teamSelect>div+div 
{
	display:inline-block;
	/* background: red; */
	margin-left: 30px; 
	margin-top: 20px; 
	
}

#teamSelect>div+div>input{
	float:left;
}


/* 다음, 이전 버튼 스타일 */
#teamSelect input[type="button"]{

	font-size: 10px; 
	/* background: yellow; */
	height:30px; 
	width: 30px; 
}

/* 이전 버튼 스타일 */
#teamSelect input[type="button"]:FIRST-CHILD{
	
		margin-right: 30px; 
		
}


/* 다음 버튼 스타일 */
#teamSelect input[type="button"]:FIRST-CHILD+p+input{

	background: url("${ctxName}/resource/images/reg-member/circle.png") no-repeat center;
}


/* 팀로고 표시되는 부분 스타일 */
#teamSelect p{
	
	float: left;
	height: 30px; 
	line-height: 30px; 
	font-weight: bold;	
	margin-right: 30px; 
}


#img-emblemList{

	transition: 1s all cubic-bezier(0.32, -0.3, 0.69, 1.35); 
	transition-property: opacity width height; 
	transition-duration: 1s;  
}

/* #next{
	background: url("${ctxName}/resource/images/reg-member/next-btn.png") no-repeat center;
} */


</style>

<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>
<script type="text/javascript" src="../resource/js/jquery-1.11.3.js"></script>

<script type="text/javascript">

//-------------->	>>> 응원팀 선택 기능 추가 

window.addEventListener("load", function () {
	
	imgEmblemList = {
			width: "50px", 
			height: "50px", 
			position: "absolute",
			left: "970px",
			top: "500px",  
			opacity: "1",	
			zIndex: "1",
		};
	
	
	
	btnNext = document.getElementById("next");
	btnAfterward = document.getElementById("afterward");
	emblemImgList = document.getElementById("img-emblemList");
	
	emblemImgList.style.width = "80px";
	
	 btnNext.style.background = "yellow";
	 btnAfterward.style.background = "yellow";
	/* btnNext.style.backgroundImage = "url('${ctxName}/resource/images/reg-member/emblem-baseball-kia.png')"; */
	/*backgroundImage = "url('img_tree.png')"; */
	btnNext.onclick = btnNextClick;   
	btnAfterward.onclick = btnAfterWardClick;
	
	ctxName = "${ctxName}";
	index = -1; 
	
	// 스포츠 종목 선택 
	cbSportsKind = document.getElementById("cbo-sportsKind");
	
	// 종목별 url 담을 변수 선언 
	soccerEmblemUrlList = [];
	baseBallEmblemUrlList = [];
	basketBallEmblemUrlList = [];
	volleyBallEmblemUrlList = [];
	
	
	emblemImgList.src = "${ctxName}/resource/images/reg-member/emblem-baseball-kia.png";
	
	//----------jQuery 적용
	jQueryEmblemImgList = $('#img-emblemList');
	jQueryEmblemImgList.eq(0).css(imgEmblemList, 1000); 
	
	
	// 각 종목별로 url 나누기 
	<c:forEach items="${emblemUrlInTeams}" var="team">
	
 		<c:if test='${team.sportsKind eq "Soccer"}'>
			soccerEmblemUrlList.push("${team.emblemUrl}"); 
		</c:if> 
		 
		<c:if test='${team.sportsKind eq "BaseBall"}'>
 			baseBallEmblemUrlList.push("${team.emblemUrl}"); 
		</c:if> 
		 
		<c:if test='${team.sportsKind eq "BasketBall"}'>
 			basketBallEmblemUrlList.push("${team.emblemUrl}"); 
	 	</c:if> 
		 
		<c:if test='${team.sportsKind eq "VolleyBall"}'>
			volleyBallEmblemUrlList.push("${team.emblemUrl}"); 
   	 	</c:if> 
   	 	
	</c:forEach>
	
	
	<c:if test='${pwdError eq "pwdError"}'>
			alert("비밀번호가 틀렸습니다ㅠㅠ");
	</c:if>
	
	
	
});


function btnNextClick()
{
	if(cbSportsKind.value =="축구")
	{
		index++;
		// 축구 엠블럼 이미지 가져오기 
		if(index < soccerEmblemUrlList.length)
		{
			emblemImgList.src = ctxName + soccerEmblemUrlList[index];
		}
		else
		{
			index = 0; 
			emblemImgList.src = ctxName + soccerEmblemUrlList[index];
		} 
	}
	else if(cbSportsKind.value =="야구")
	{
		index++;
		// 야구 엠블럼 이미지 가져오기 
		if(index < baseBallEmblemUrlList.length)
		{
			emblemImgList.src = ctxName + baseBallEmblemUrlList[index];
		}
		else
		{
			index = 0; 
			emblemImgList.src = ctxName + baseBallEmblemUrlList[index];
		} 
	}
	else if(cbSportsKind.value =="농구")
	{
		index++;
		// 농구 엠블럼 이미지 가져오기 
		if(index < basketBallEmblemUrlList.length)
		{
			emblemImgList.src = ctxName + basketBallEmblemUrlList[index];
		}
		else
		{
			index = 0; 
			emblemImgList.src = ctxName + basketBallEmblemUrlList[index];
		} 
	}
	else
	{
		index++;
		// 배구 엠블럼 이미지 가져오기 
		if(index < volleyBallEmblemUrlList.length)
		{
			emblemImgList.src = ctxName + volleyBallEmblemUrlList[index];
		}
		else
		{
			index = 0; 
			emblemImgList.src = ctxName + volleyBallEmblemUrlList[index];
		} 
	}
	
	// ----------- jQuery로 애니메이션 효과 주기 
	jQueryEmblemImgList.eq(index).animate(imgEmblemList, 250);
	jQueryEmblemImgList.eq(index)
	.animate({
					width: "1000px",
					opacity: 0.5
				},1000)
				.animate({
					width:"500px"
				}, 500)
				.animate({
					width:"50px",
					opacity:1
				},500);
			
			/* .animate({
				opacity: 0.5
			},1000)
			.animate({
				opacity: 1
			},1000); */
};


function btnAfterWardClick()
{
	if(cbSportsKind.value =="축구")
	{
		--index;
		// 축구 엠블럼 이미지 가져오기 
		if(index > -1)
		{
			emblemImgList.src = ctxName + soccerEmblemUrlList[index];
			
		}
		else
		{
			index = soccerEmblemUrlList.length - 1; 
			emblemImgList.src = ctxName + soccerEmblemUrlList[index];
		} 
	}
	else if(cbSportsKind.value =="야구")
	{
		--index;
		// 야구 엠블럼 이미지 가져오기 
		if(index > -1)
		{
			emblemImgList.src = ctxName + baseBallEmblemUrlList[index];
		}
		else
		{
			index = baseBallEmblemUrlList.length - 1; 
			emblemImgList.src = ctxName + baseBallEmblemUrlList[index];
		} 
	}
	else if(cbSportsKind.value =="농구")
	{
		--index;
		// 농구 엠블럼 이미지 가져오기 
		if(index > -1)
		{
			emblemImgList.src = ctxName + basketBallEmblemUrlList[index];
		}
		else
		{
			index = basketBallEmblemUrlList.length - 1; 
			emblemImgList.src = ctxName + basketBallEmblemUrlList[index];
		} 
	}
	else
	{
		--index;
		// 배구 엠블럼 이미지 가져오기 
		if(index > -1)
		{
			emblemImgList.src = ctxName + volleyBallEmblemUrlList[index];
		}
		else
		{
			index = volleyBallEmblemUrlList.length - 1; 
			emblemImgList.src = ctxName + volleyBallEmblemUrlList[index];
		} 
	}
}
// <<<<--------------  응원팀 선택 기능 추가 
</script>



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
					<form action="" id="reg-form" method="POST">
						<label>ID</label><input name="identification" type="text"/>
						<label>Password</label><input name="pwd" type="text"/>
						<label>Password Confirmation</label><input name="pwdConfiguration" type="text"/> <!-- 잠시 주석.. -->
						<label>Email</label><input name="email" type="text"/>
						<label>Cell Phone Number</label><input name="phone" type="text"/>
						<label>My Team</label>
						
						<div id="teamSelect">
						
							<div>
								<select id="cbo-sportsKind">
									<option>축구</option>
									<option selected>야구</option>
									<option>농구</option>
									<option>배구</option>
								</select>
							</div>				
							
							<div>
								<input id="afterward" type="button" value="이전"/>
								<!-- <div> -->
									<p>
										<img id="img-emblemList"/> 
									</p>
								<!-- </div> -->
								<input id="next" type="button" value="다음"/>
							</div>
						</div>
						
						<label>Kakao ID</label><input name="kakaoId" type="text"/>
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