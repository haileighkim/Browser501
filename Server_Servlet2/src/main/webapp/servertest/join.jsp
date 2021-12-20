<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String date = request.getParameter("date");
	
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "scott";
	String passwd = "scott";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into member1 values(?, ?, ?, ?)";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn = DriverManager.getConnection(url, userid, passwd);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, date);

		int result = pstmt.executeUpdate();
		
		if(result == 1){
%>			
<script>
			alert("입력성공");
</script>
<%
			response.sendRedirect("main.jsp");
		}else {
%>
<script>
			alert("입력에 실패 하였습니다");
</script>
<%
			response.sendRedirect("joinform.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>