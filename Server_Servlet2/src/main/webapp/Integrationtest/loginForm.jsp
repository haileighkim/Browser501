<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
</head>
<body>
	<h3>로그인</h3>
	<form action="Join.do" method="post">
		<table>
			<tr>
				<td>*아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>*암호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td><input type="submit" value="확인"></td>
			</tr>
		</table>
	</form>
</body>
</html>