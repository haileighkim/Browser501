package integrationtest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDAO2 dao = new MemberDAO2();
		MemberDTO2 dto = new MemberDTO2(id, pw);
		MemberDTO2 info = dao.login(dto);

		if (info != null) {
			Cookie cookie1 = new Cookie("id", info.getId());
			Cookie cookie2 = new Cookie("pw", info.getPw());

			response.addCookie(cookie1);
			response.addCookie(cookie2);

			response.sendRedirect("login.jsp");

		} else {
			response.sendRedirect("login.jsp");
		}
	}
}
