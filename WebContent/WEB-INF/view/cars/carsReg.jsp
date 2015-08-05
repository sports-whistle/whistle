<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카스 등록</title>
</head>
<body>
	<header>
	<h1>Whistle</h1>
	<nav>
	<h1>FanZone</h1>
	<a href="carsStart">FanZone</a> </nav> </header>
	<main> <section>
	<h1>카스 입력 정보</h1>

	<fieldset style="width: 20">
		<form action="" method="post">
			<legend> 카스 등록 입력 정보</legend>
			<table border="1" collapse="50" width="1000">

				<thead>

					<tr>
						<td align="center">경기</td>
						<td align="center">제목</td>
						<td align="center">약속장소</td>
						<td align="center">최대인원수</td>
						<td align="center">남기고 싶은말</td>
					</tr>


					<%-- 					<c:if test="${isDirectReg eq 1}"> <!-- 실수는 어케 비교하지?? -->
						<tr>
							<td align="center">경기</td>
							<td align="center">경기시간</td>
							<td align="center">제목</td>
							<td align="center">약속장소</td>
							<td align="center">최대인원수</td>
							<td align="center">남기고 싶은말</td>
						</tr>
					</c:if>

					<c:if test="${isDirectReg eq 2}">
						<tr>
							<td align="center">경기</td>
							<td align="center">제목</td>
							<td align="center">약속장소</td>
							<td align="center">최대인원수</td>
							<td align="center">남기고 싶은말</td>
						</tr>
					</c:if> --%>

				</thead>

				<tbody>
					<tr>
						<td align="center">${game.teamName1}vs${game.teamName2}</td>
						<td align="center"><input name="subject" /></td>
						<td align="center"><input name="zone" /></td>
						<td align="center"><input name="maxParticipants" /></td>
						<td align="center"><input name="comment" /></td>

						<!-- <td align="center"><input name="match" /></td> -->
						<%-- 			<c:if test="${isDirectReg eq 1}">
							<td align="center"><input name="match" /></td>
							<td align="center"><input name="userDirectRegMatchDate" /></td>
							<td align="center"><input name="subject" /></td>
							<td align="center"><input name="zone" /></td>
							<td align="center"><input name="maxParticipants" /></td>
							<td align="center"><input name="comment" /></td>
						</c:if>

						<c:if test="${isDirectReg eq 2}">
							<td align="center">${game.teamName1}vs${game.teamName2}</td>
							<td align="center"><input name="subject" /></td>
							<td align="center"><input name="zone" /></td>
							<td align="center"><input name="maxParticipants" /></td>
							<td align="center"><input name="comment" /></td>
						</c:if> --%>

					</tr>
				</tbody>

			</table>
			<fieldset>
				<legend>등록 및 수정</legend>
				<p>
					<input type="submit" value="카스 등록" /> <input type="submit"
						value="수정" />
				</p>
			</fieldset>
		</form>
	</fieldset>
	</section> </main>

	<aside>
	<h1>다른 카스 페이지 이동</h1>
	<ul>
		<li><a href="">FanZone</a></li>
		<li><a href="carsMatchPlanChk">경기 일정 확인</a></li>
	</ul>
	</aside>

</body>
</html>