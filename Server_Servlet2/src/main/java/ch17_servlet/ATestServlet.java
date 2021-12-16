package ch17_servlet;
//514
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URL Pattern Mapping Rule
//(1)Directory Pattern
//(2)Extension(확장자) Pattern

//http://localhost:8080/Server_Servlet2/ATest = A
//http://localhost:8080/Server_Servlet2/test = C
//http://localhost:8080/Server_Servlet2/test/BTest = B

//http://localhost:8080/Server_Servlet2/ = D
//http://localhost:8080/Server_Servlet2/xxx = D
//http://localhost:8080/Server_Servlet2/kkk = D

@WebServlet("/ATest")
public class ATestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ATestServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
