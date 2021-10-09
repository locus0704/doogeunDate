<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page errorPage="error/errorpage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String[] categoryList;
	String locationName = "location";%>
	<script>
<%categoryList = request.getParameterValues("cateCheck");
			for (String val : categoryList) {%>
console.log("<%=val%>")
	<%}
			String location = request.getParameter(locationName);
			request.setAttribute("location", location);
			request.setAttribute("category", categoryList);
			pageContext.forward("mainPage.jsp");%>
		
	<%=locationName%>
		
	</script>
</body>
</html>

<%@ page errorPage="error/errorpage.jsp"%>