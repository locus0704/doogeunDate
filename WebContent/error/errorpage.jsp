<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<%@ page import ="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>에러가 발생했습니다.</title>
</head>
<body>
<H2 align="center">페이지 처리 중 에러가 발생했습니다.</H2>
<hr>
<p>빠른 시일내에 올바르게 복구하겠습니다. 문의는 관리자에게 해주세요.</p>
<p>관리자 전화번호 : 010-****-****, 관리자 E-mail : *****@naver.com</p>
<p>에러 내용 : <%= exception.toString() %><p><br><br>
<input type="button" value="첫 화면으로" onclick="location.href='indexPage.jsp'">
</body>
</html>