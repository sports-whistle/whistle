<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL 활용방법 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@page import="java.util.Calendar"%>
<%
	request.setCharacterEncoding("utf-8");

	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH) + 1;

	String _year = request.getParameter("year");
	String _month = request.getParameter("month");

	if (_year != null)
		year = Integer.parseInt(_year);

	if (_month != null)
		month = Integer.parseInt(_month);

	now.set(year, month - 1, 1); //출력할 년도, 월로 설정

	year = now.get(Calendar.YEAR); //변화된 년, 월
	month = now.get(Calendar.MONTH) + 1;

	int end = now.getActualMaximum(Calendar.DAY_OF_MONTH); //해당월의 마지막 날짜
	int w = now.get(Calendar.DAY_OF_WEEK); //1~7(일~토)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function LayerView() {
		layerID.style.visibility = "visible";
	}

	function LayerHiding() {
		layerID.style.visibility = "hidden";
	}
</script>

<style>
/* td {
	text-align: left;
	font size: 30px;
}

table {
	border-collapse: collapse;
}

.a1 {
	background-color: pink;
	width: 40;
	height: 50;
}

.a2 {
	font-size: 20px;
	background-color: yellow;
	border-collapse: separate;
}

input[id="week"] {
	text-align: center;
}

.a3 {
	text-align: center;
	 	background-color: red; 
}
.a4 {
 	background-color: pink; 
} */
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경기 일정 확인</title>
</head>
<link href="notice.css" type="text/css" rel="stylesheet" />
<body>
	<header>
	<h1>Whistle</h1>
	<nav>
	<h1>FanZone</h1>
	<a href="comeWithMeStart.jsp">FanZone</a> </nav> 
	</header>

	<main> <section>
	<h1>일정 확인</h1>
	<br />
	&nbsp;<br />
	<center>
		<table width="210" border="0" cellpadding="1" cellspacing="2">
			<tr height="30">
				<td align="center"><a
					href="cwmMatchPlanChk-calender.jsp?year=<%=year%>&month=<%=month - 1%>">◀</a>
					<b><%=year%>年 <%=month%>月</b> <a
					href="cwmMatchPlanChk-calender.jsp?year=<%=year%>&month=<%=month + 1%>">▶</a></td>
			</tr>
			
				<p>축구
				야구
				농구
				배구</p>
		</table>

		<table width="1000" height=" 500" border="0" cellpadding="2"
			cellspacing="1" bgcolor="#cccccc">
			<tr height="25">
				<td align="center" bgcolor="#e6e4e6"><font color="red">일</font></td>
				<td align="center" bgcolor="#e6e4e6">월</td>
				<td align="center" bgcolor="#e6e4e6">화</td>
				<td align="center" bgcolor="#e6e4e6">수</td>
				<td align="center" bgcolor="#e6e4e6">목</td>
				<td align="center" bgcolor="#e6e4e6">금</td>
				<td align="center" bgcolor="#e6e4e6"><font color="blue">토</font></td>
			</tr>
			<%
				int newLine = 0;
				//1일이 어느 요일에서 시작하느냐에 따른 빈칸 삽입
				out.println("<tr height='25'>");
				for (int i = 1; i < w; i++) {
					out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
					newLine++;
				}

				String fc, bg;
				for (int i = 1; i <= end; i++) {
					fc = (newLine == 0) ? "red" : (newLine == 6 ? "blue" : "#000000");
					bg = "#ffffff";
					//out.println("<td align='center' bgcolor=" + bg + "><font color=" + fc + ">" + "<a href=ShowTable('showTable')>"+ i +"</a>"+ "</font></td>");
					//out.println("<td align='center' bgcolor=" + bg + "><font color=" + fc + ">" + "ShowTable('showTable')"+ i +"</a>"+ "</font></td>");
					out.println(
							"<td align='center' bgcolor=" + bg + "><font color=" + fc + ">" + "<a href=" + "Javascript:LayerView(); " + ">" +  i +  " </a>" + "</a>" + "</font></td>");
					newLine++;
					if (newLine == 7 && i != end) {
						out.println("</tr>");
						out.println("<tr height='25'>");
						newLine = 0;
					}
				}

				while (newLine > 0 && newLine < 7) {
					out.println("<td bgcolor='ffffff'>&nbsp;</td>");
					newLine++;
				}
				out.println("</tr>");
			%>
		</table>
	</center>
	</section> </main>

	<aside>
	<h1>카스 기능</h1>
	<ul>
		<li><a href="cwmCarsReg.jsp">카스 등록</a></li>
	</ul>
	</aside>

</body>
</html>