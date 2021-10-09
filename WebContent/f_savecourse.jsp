<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import ="java.sql.*" %>
<%@ page errorPage = "error/errorpage.jsp" %>
<%!
	String driver="com.mysql.jdbc.Driver";//mysql jdbc드라이버(필수)
	String url ="jdbc:mysql://localhost:3306/project";
	//마지막 부분을 본인의 스키마로
	String dbId="root"; //데이터베이스 ID
	String dbPw="0904";//데이터베이스 PW
	

	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String location = "";
	%>
	
<% 
	String ID = (String)session.getAttribute("id");	//세션 아이디 받아옴

	Class.forName("com.mysql.jdbc.Driver"); //JDBC드라이버가 실제로 적용되는 부분
	con=DriverManager.getConnection(url, dbId, dbPw);

	request.setCharacterEncoding("utf-8");
	String loc1 = request.getParameter("loc1");
	String loc2 = request.getParameter("loc2");
	String loc3 = request.getParameter("loc3");
	String loc4 = request.getParameter("loc4");
	String loc5 = request.getParameter("loc5");

	String sql = 
	"INSERT INTO course (id,loc1,loc2,loc3,loc4,loc5) values (?, ?, ?, ?, ?, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1,ID);
	pstmt.setString(2,loc1);
	pstmt.setString(3,loc2);
	pstmt.setString(4,loc3);
	pstmt.setString(5,loc4);
	pstmt.setString(6,loc5);

	pstmt.executeUpdate();

	pstmt.close();
	con.close();
%>
<script>
alert('데이트 코스가 확정되었습니다!');
location.href = 'mypage.jsp';
</script>