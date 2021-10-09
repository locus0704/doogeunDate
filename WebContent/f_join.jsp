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
	%>
<%
	Class.forName("com.mysql.jdbc.Driver"); //JDBC드라이버가 실제로 적용되는 부분
	con=DriverManager.getConnection(url, dbId, dbPw);

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	
	String sql = 
	"INSERT INTO member (id,passwd,name,age,gender,email) values (?, ?, ?, ?, ?, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,passwd);
	pstmt.setString(3,name);
	pstmt.setInt(4,age);
	pstmt.setString(5,gender);
	pstmt.setString(6,email);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
%>
<script>
	alert('회원가입 성공');
	location.href = 'indexPage.jsp';
</script>