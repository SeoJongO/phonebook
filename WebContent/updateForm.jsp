<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='java.util.List'%>
<%@ page import='com.javaex.dao.PhoneDao'%>
<%@ page import='com.javaex.vo.PersonVo'%>
<%
	PhoneDao phoneDao = new PhoneDao();

	String id = request.getParameter("id");
	int personID = Integer.parseInt(id);
	System.out.println(personID);
	
	PersonVo personVo = phoneDao.getPerson(personID);
	System.out.println(personVo.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<h1>전화번호 수정폼</h1>
	<p>
		전화번호를 수정하려면 <br>
		아래 항목을 수정하고 "수정" 버튼을 클릭하세요.
	</p>
	
	<form action="./update.jsp" method="post">
		이름: <input type="text" name="name" value="<%=personVo.getName()%>"> <br>
		핸드폰: <input type="text" name="hp" value="<%=personVo.getHp()%>"> <br>
		회사: <input type="text" name="company" value="<%=personVo.getCompany()%>"> <br>
		<input type="hidden" name="id" value="<%=personVo.getPersonId()%>"> <br>
		
		<button type="submit">수정</button>
	</form>

</body>
</html>