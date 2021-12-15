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
	String param1 = application.getInitParameter("name");
	String param2 = application.getInitParameter("age");
	out.println("NAME: "+param1+"<br>"+"AGE: "+param2+"<hr>");
%>

	초기화 Parameter Name : ${initParam.name}<br>
	초기화 Parameter AGE : ${initParam.age}<hr>
	요청 URI: ${pageContext.request.requestURI }<hr>
	아이디 : ${param.id }<br>
	선택한 운동 : ${paramValues.sports[0]} ${paramValues.sports[1]} ${paramValues.sports[2]} ${paramValues.sports[3]}
</body>
</html>