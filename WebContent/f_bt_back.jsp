<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage = "error/errorpage.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] categoryList = {"c_food", "c_smallshop", "c_build", "c_service", "c_educate", "c_visit", "c_medical", "c_tour"};
request.setAttribute("location", "구월동");
request.setAttribute("category", categoryList);
pageContext.forward("mainPage.jsp");
%>