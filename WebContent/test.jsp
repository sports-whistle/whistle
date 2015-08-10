<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function changeimage() {
    var image = document.getElementById('abc');
    var emblemList = document.getElementById('abc');
    if (image.src.match("naver")) {
        image.src = "https://pixabay.com/static/uploads/photo/2015/02/13/09/47/mail-634902__180.png";
    } else {
        image.src = "http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif";
    }
}


</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>아래 이미지를 클릭하면 다른 이미지로 변경됩니다!</p>
<img id="abc" onclick="changeimage()" src="http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif">

</body>
</html>