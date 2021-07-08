<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='java.util.List'%>
<%@ page import='com.javaex.dao.PhoneDao'%>
<%@ page import='com.javaex.vo.PersonVo'%>
<%
	PhoneDao phoneDao = new PhoneDao();
	
	int personID = Integer.parseInt(request.getParameter("id"));
	
	int count = phoneDao.personDelete(personID);
	System.out.println(count);
	
	response.sendRedirect("./list.jsp");	
%>

<%-- 리다이렉트
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	
	</body>
	</html>
--%>