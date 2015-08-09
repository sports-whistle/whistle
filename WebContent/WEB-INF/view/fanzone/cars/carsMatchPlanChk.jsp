<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경기 일정 확인</title>
</head>
<link href="notice.css" type="text/css" rel="stylesheet" />
<body>
	<header>
	<h1>Whistle</h1>
	<nav>
	<h1>FanZone</h1>
	<a href="carsStart">FanZone</a> </nav> </header>
	</nav>
	</header>


	<main> 
	<section>
	<h1>경기 일정 확인</h1>
	<table border="1" width="1000">
		<%-- <c:forEach var="i" begin="15" end="25"> --%>
			<thead>
				<tr>
					<c:forEach var="i" begin="15" end="25">
					<th>7월 ${i}일</th>
				<%-- <c:set var="name" value="홍길동" /> --%>	
					</c:forEach>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="n" items="${list}" varStatus="status">
				<!-- 현재 달력에 날짜와 경기일자가 같을때 경기팀 표시 -->
					<tr>
					<c:if test="${status.index eq 3}">
						<td>
							<a href="carsRegChk?c=${n.code}">
							<%-- <a href="carsRegChk?c=${list}"> --%> <!-- Game객체  통째로 전달 되나??-->
							${n.teamName1} vs ${n.teamName2 }<br>
							<fmt:formatDate value="${n.dateTime}" pattern="yyyy-MM-dd hh:mm"/>
							</a>
						</td>
						
						<%-- <td><fmt:formatDate value="${n.dateTime}" pattern="yyyy-MM-dd" /></td> --%>
					</c:if>
					</tr>
				</c:forEach>
			</tbody>
		<%-- </c:forEach> --%>
	</table>


	</section> 
	</main>
	<aside>
		<h1>다른페이지이동</h1>
	</aside>

</body>
</html>