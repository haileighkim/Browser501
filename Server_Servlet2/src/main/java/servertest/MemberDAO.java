package servertest;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servertest/MemberDAO.do")
public class MemberDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String date = request.getParameter("date");

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String userid = "scott";
		String passwd = "scott";
		String sql = "insert into member1(id,pw,name,date) values(?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		PrintWriter out = response.getWriter();
		out.println("<html><body>");

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userid, passwd);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, date);
			int n = pstmt.executeUpdate();
			if (n == 1) {
				out.print("입력성공");
				response.sendRedirect("main.jsp");
			}else {
				out.print("입력에 실패 하였습니다");
				response.sendRedirect("joinform.jsp");
			}
		} catch (SQLException e) {
		} catch (ClassNotFoundException e) {
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {

			}
		}

		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
	
}
