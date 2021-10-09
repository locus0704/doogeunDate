<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page errorPage = "error/errorpage.jsp" %>
<%
session.invalidate();
response.sendRedirect("./indexPage.jsp");
%>