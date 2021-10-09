<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "error/errorpage.jsp" %>
<html lang="en">

<head>
	<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
	<meta charset="EUC-KR">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>데이트코스</title>
	<link rel="stylesheet" type="text/css" href="style/index.css" />
</head>

<body>
	<div id="header">
 		<p id="pp">데이트 코스 찾기</p>
	</div>
	<div id="container">
		<form action="f_login.jsp" method="post">
			<div class="login">
					<h1>login</h1>
					아이디 &nbsp;&nbsp;&nbsp; <input name="id"><br>
					비밀번호 &nbsp;&nbsp;<input type="password" name="passwd"><br>
	
					<div class="button">
						<input type="submit" value="로그인">
						<input type="button" value="회원가입" onclick="location.href='joinPage.jsp'"><br>
					</div>
				</div>
		</form>
	</div>
	<div class="footer">
		<p >copyright & Jaeho, Hyunsung, Jooyeon, Yunji</p>
	</div>
</body>

</html>