<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page errorPage = "error/errorpage.jsp" %>
<%!
	String driver="com.mysql.jdbc.Driver";//mysql jdbc드라이버(필수)
	String url ="jdbc:mysql://localhost:3306/project";
	//마지막 부분을 본인의 스키마로
	String dbId="root"; //데이터베이스 ID
	String dbPw="0904";//데이터베이스 PW
	String query="SELECT*FROM course where id = ?;";

	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 페이지</title>
</head>
<body>
<%
	
	String ID = (String)session.getAttribute("id");
	Class.forName("com.mysql.jdbc.Driver"); //JDBC드라이버가 실제로 적용되는 부분
	con=DriverManager.getConnection(url, dbId, dbPw);
	pstmt = con.prepareStatement(query);
	pstmt.setString(1,ID);
	rs=pstmt.executeQuery();
	int i = 1;
	
	while(rs.next()){
	
	 String loc1 =rs.getString("loc1");
	 String loc2 =rs.getString("loc2");
	 String loc3 =rs.getString("loc3");
	 String loc4 =rs.getString("loc4");
	 String loc5 =rs.getString("loc5");
	 
	 out.println(i+"번째 코스 )  1번 장소 :  "+loc1+">  2번 장소 :  "+loc2+">  3번 장소 :  "+loc3+">  4번 장소 :  "+loc4+">  5번 장소 :  "+loc5+"<br/>");%>
	 <br>
	 <%
	 i++;
 }
	
%>
<input type="button" value="메인으로 가기" onclick="location.href='f_bt_back.jsp'">
</body>
</html>