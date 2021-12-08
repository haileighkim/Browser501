<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="forward.png"><br>
<img src="redirect.png"><br>
현재 페이지는 <b>responseRedirect.jsp</b>
<%
	response.sendRedirect("responseResult.jsp?id=hong");

%>
redirect 밑에 있는 내용<br>
</body>
</html>