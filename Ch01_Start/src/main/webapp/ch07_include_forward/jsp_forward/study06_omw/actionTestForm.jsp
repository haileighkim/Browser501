<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<form action="actionTest.jsp" method="post">
	<table>
        <tr><th>아이디</th><td><input type="text" name="id" value=""/></td></tr>
        <tr><th>암호우</th><td><input type="text" name="pw" value=""/></td></tr>
        <tr><th></th><td>
       
         <input type ="radio" name="user" />사용자
         <input type ="radio" name="admin" />관리자
       
         </td></tr>
        <tr><td colspan="2"><input type="submit" value="로그인"/></td></tr>
      </table> 
   </form>   
</body>
</body>
</html>