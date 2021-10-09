<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import ="java.sql.*" %>
<%@ page  import="java.util.*" %>
<%!
	String location = "구월동";
	String driver="com.mysql.jdbc.Driver";//mysql jdbc드라이버(필수)
	String url ="jdbc:mysql://localhost:3306/project";
	String dbId="root";
	String dbPw="0904";
	String query1="SELECT * FROM villageData WHERE villageName = ? ";
	String query2="SELECT * FROM shopdb where ? < longtitude and longtitude < ? and ? < latitude and latitude < ?;";
	double mLongtitude = 1;
	double mLatitude = 1;
	
	String asd = "asd";
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String query3="SELECT * FROM villageData";
	String vName = "init";
	String[] categoryList = null;
	ResultSet rset = null;
	PreparedStatement pstmt2 = null;
	String sValues = "";
	%>
	<script>
	<% 
	location = (String) request.getAttribute("location");
	categoryList = (String[]) request.getAttribute("category");
	Class.forName(driver);//JDBC드라이버가 실제로 적용되는 부분
	con = DriverManager.getConnection(url, dbId, dbPw);
	pstmt2 = con.prepareStatement(query3);
	
	rset=pstmt2.executeQuery();
	//////////////////////
	
	pstmt = con.prepareStatement(query1);
	pstmt.setString(1, location);
	
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		if(location.equals(rs.getString("villageName"))){
			mLongtitude = Double.parseDouble(rs.getString("longtitude"));
			mLatitude = Double.parseDouble(rs.getString("latitude"));
			pstmt = con.prepareStatement(query2);
			pstmt.setDouble(1, mLongtitude - 0.001);
			pstmt.setDouble(2, mLongtitude + 0.001);
			pstmt.setDouble(3, mLatitude - 0.001);
			pstmt.setDouble(4, mLatitude + 0.001);
			
			rs=pstmt.executeQuery();
			
		}
	}
	%>
	</script>