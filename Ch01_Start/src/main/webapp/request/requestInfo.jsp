<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
client IP:		<br>
Requested information length:		<br>
Sending Method:<%=request.getMethod() %><br>

Requested URI:<%=request.getRequestURI() %><br>
Whole Path:<%=request.getRequestURL() %>	<br>
Context Path:<%=request.getContextPath() %><br>

Server Name:<%=request.getServerName() %><br>
</body>
</html>