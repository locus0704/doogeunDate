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
	String query="SELECT passwd FROM member where id=?;";
	

	
	Connection con = null;
	PreparedStatement pstmt = null; //sql질의문을 사용할 때 사용하는 메소드
	ResultSet rs = null;
	String[] categoryList = {"c_food", "c_smallshop", "c_build", "c_service", "c_educate", "c_visit", "c_medical", "c_tour"};
	%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	Class.forName(driver);//JDBC드라이버가 실제로 적용되는 부분
	con = DriverManager.getConnection(url, dbId, dbPw);
	
	pstmt = con.prepareStatement(query);
	pstmt.setString(1, id);
	
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		if(passwd.equals(rs.getString("passwd"))){
			session.setAttribute("id",id);
			request.setAttribute("location", "구월동");
			request.setAttribute("category", categoryList); //session request객체를 사용해서 setAttribute
			pageContext.forward("mainPage.jsp");
	} else {
		%>
<script>
	alert('패스워드 틀림');
	history.back();
</script>
<%
	}
} else {
%>
<script>
	alert('아이디없음');
	history.back();
</script>
<%
}
%>