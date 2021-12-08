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
 String id=request.getParameter("memberid");
if(id != null && id.equals("admin")){
	response.sendRedirect("index.jsp");
}else {
	out.println("잘못된 id입니다.");
}
%>
</body>
</html>