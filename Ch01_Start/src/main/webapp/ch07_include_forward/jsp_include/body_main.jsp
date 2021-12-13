<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp::include</title>
</head>
<body>
<img src ="jsp_include.png"><br>
<%
	request.setAttribute("name1", "park");
%>
include 전 name parameter값 : <%=request.getParameter("name") %><hr>
<jsp:include page="body_sub.jsp">
<jsp:param value="hong" name="name"/>
</jsp:include>
<hr>
include 후 name parameter값 : <%=request.getParameter("name") %><hr>
</body>
</html>