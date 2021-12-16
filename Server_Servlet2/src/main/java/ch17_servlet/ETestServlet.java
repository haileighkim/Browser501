package ch17_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8080/Server_Servlet2/xxx.do = E
//http://localhost:8080/Server_Servlet2/test/a.nhn = G 
//http://localhost:8080/Server_Servlet2/xyz/a.do = E 
//http://localhost:8080/Server_Servlet2/xyz/kk.go = F 
//http://localhost:8080/Server_Servlet2/my/ss.go = F


//(2)Extension(확장자) Pattern
@WebServlet("*.do")
public class ETestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ETestServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
