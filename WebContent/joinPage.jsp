<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "error/errorpage.jsp" %>
<!DOCTYPE HTML>
<html>

<head>
	<title>데이트코스</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="./nonograms.js" type="text/javascript"></script>
</head>

<body>
	<h1>회원가입 페이지</h1>
	<hr>
	<form action="f_join.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
		패스워드 : <input type="password" name="passwd"><br>
		이름 : <input type="text" name="name"><br>
		나이 : <input type="number" name="age" min="0" max="200"><br>
		성별 : <input type="radio" name="gender" value="남">남성
		<input type="radio" name="gender" value="여">여성<br>
		이메일 : <input type="email" name="email"><br><br>
		<input type="submit" value="회원가입">
		<input type="button" name="join" value="로그인 화면으로 이동" onclick="location.href='indexPage.jsp'">
	</form>
</body>

</html>