<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Include</title>
</head>
<body>
%@include file 을 사용할 경우 :: 공용 변수 사용 시<br>
<img src="directive_include.png"><br>
<%
	int number = 10;
%>
<%@ include file="includee.jspf" %>

공통변수 DATAFOLDER = "<%=dataFolder %>"
</body>
</html>