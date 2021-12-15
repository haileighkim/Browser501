<%@page import="ch11_el.Thermomoter267"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Thermomoter267 t = new Thermomoter267();
request.setAttribute("th", t);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${th.setCelsius('서울',27.3) }
서울 기온 :: 섭씨 ${th.getCelsius('서울')}도<br>
		   화씨 ${th.getFahrenheit('서울')}도<br>
정보 :: ${th.info }
</body>
</html>