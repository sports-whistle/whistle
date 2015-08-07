<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EnjoySportsTogether</title>
</head>
<style>
#fanEnjoy{
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
}
</style>
<body>
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
				<p><a href="">Sports</a></p>
			</nav>
			
			<nav id = fanTogether>
				<h1>Together</h1>
				<p><a href="${ctxName}/cars/carsStart">Together</a></p>
			</nav>
		</section>
	</main>
</body>
</html>