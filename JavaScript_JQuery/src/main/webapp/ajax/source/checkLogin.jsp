<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String no = request.getParameter("no");
if (no != null) {
	out.println("로그인 상태입니다.");
} else {
	out.println("로그인 상태가 아닙니다.");
}
out.println("<br>넘어온 번호는" + no + "입니다.");
%>