<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "이승기";
	request.setAttribute("name", name);

	Member m = new Member();
	m.setId("abcd");
	m.setName("lee");
	request.setAttribute("m", m);
%>
<jsp:forward page="el_forward2.jsp"></jsp:forward>
</body>
</html>