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
String id = request.getParameter("id");
String pw = request.getParameter("pw"); 

	if(id !=null){
%>
			<jsp:forward page="userMain.jsp"/>
<%		}else if(id.equals("admin")){
%>
			<jsp:forward page="managerMain.jsp"/>

<% 		}else{ %>
			<jsp:forward page="actionTestForm.jsp"/>
	
<% }%>

</body>
</html>