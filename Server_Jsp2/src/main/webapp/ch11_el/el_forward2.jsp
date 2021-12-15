<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표기법으로 출력하기</title>
</head>
<body>
attribute name :: ${name }<br>
scope name :: ${requestScope.name }<br>
Member.id :: ${m.id }<br>
Member.name :: ${m.name }<hr>

요청 URI(EL): ${pageContext.request.requestURI}<br>
요청 URI(JSP): <%=request.getRequestURI() %><br>
Parameter code: ${param.code }<br>
이름을 request에 담기: ${requestScope.name }<br>
</body>
</html>