<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="login" class="study14.LoginBean"/>
<jsp:setProperty property = "*" name = "login"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>ID & PW를 EL방식으로 입력 받기</h4>
	사용자 아이디 : ${login.userid }<br>
	사용자 비밀번호 : ${login.passwd }<hr>
	사용자 아이디 : <jsp:setProperty property = "userid" name = "login"/><br>	 
	사용자 비밀번호 : <jsp:setProperty property = "passwd" name = "login"/>	<hr>
입력 파라미터를 저장하지 않고 바로 출력하기<br>
	사용자 아이디 : ${param.userid }<br>
	사용자 비밀번호 : ${param.passwd }<hr>
</body>
</html>