<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Login Success::<br>
Jsp:: <%= session.getAttribute("ids") %><br>
Jsp:: <%= session.getAttribute("pws") %><br>
EL:: ${ids }<br>
EL:: ${pws }<br>
</body>
</html>