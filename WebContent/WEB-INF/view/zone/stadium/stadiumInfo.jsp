<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Match Information</title>
<style>
#si{
	position: relative;
	margin: auto;
	bottom: 130px;
	float:left;
}
#wara{
	position: relative;
	margin: auto;
	left: 600px;
	bottom: 530px;
	float:left;
}
#motel{
	position: relative;
	margin: auto;
	left: 600px;
	bottom: 430px;
	float:left;
}
#month{

}
</style>
</head>
<body>
	<header>
		<h1><img src="../images/whistleHeader.png"  alt="whistlelogo"></h1>
	</header>
	<section>
	<h1>팀경기정보</h1>
	<nav>
	<h1>팀지역정보</h1>
	<ul>
		<li id= si><a href="${ctxName}/zone/stadium/stadiumSeatInfo"><img src="../images/stadiumInside.png" alt="stadiuminside"></a></li>
		<li id= wara><a href="${ctxName}/zone/stadium/stadiumVisitInfo"><img src="../images/warawara.png" alt="roughmap"></a></li>
		<li id= motel><a href="${ctxName}/zone/stadium/famousFoodAndSleepInfo"><img src="../images/motel.png" alt="famousFoodAndSleep"></a></li>
	</ul>
	</nav>
	</section>
	<table>
		<thead id ="month">
			<tr>
				<th>June</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Sunday</td>
				<td>Monday</td>
				<td>Tuesday</td>
				<td>Wednesday</td>
				<td>Thursday</td>
				<td>Friday</td>
				<td>Saturday</td>
				<td>Sunday</td>
			</tr>
			<tr>
				<td></td>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
			<tr>
				<td>7</td>
				<td>8</td>
				<td>9</td>
				<td>10</td>
				<td>11</td>
				<td>12</td>
				<td>13</td>
			</tr>
			<tr>
				<td>14</td>
				<td>15</td>
				<td>16</td>
				<td>17</td>
				<td>18</td>
				<td>19</td>
				<td>20</td>
			</tr>
			<tr>
				<td>21</td>
				<td>22</td>
				<td>23</td>
				<td>24</td>
				<td>25</td>
				<td>26</td>
				<td>27</td>
			</tr>
			<tr>
				<td>28</td>
				<td>29</td>
				<td>30</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>