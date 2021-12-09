<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="../jsp_forward.png"><br>
이 페이지는 from.jsp 페이지 입니다1.<br>
<%
	request.setAttribute("number", "1234");
%>

<jsp:forward page="to.jsp">
<jsp:param value="abcd" name="id"/>
</jsp:forward>

이 페이지는 from.jsp 페이지 입니다2.<br>
</body>
</html>