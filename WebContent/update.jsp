<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='java.util.List'%>
<%@ page import='com.javaex.dao.PhoneDao'%>
<%@ page import='com.javaex.vo.PersonVo'%>
<%
	request.setCharacterEncoding("UTF-8");

	PhoneDao phoneDao = new PhoneDao();
	
	int personID = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(personID, name, hp, company);
	System.out.println(personVo);
	phoneDao.personUpdate(personVo);
	
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