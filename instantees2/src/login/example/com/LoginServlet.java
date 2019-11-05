package login.example.com;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.example.com.LoginService;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	LoginService service = null;

	public void init(ServletConfig config) throws ServletException {
		service = new LoginService();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		String message = service.doLogin(email, password);
		if (message.equals("Login Successfull")) {
			HttpSession session = request.getSession();
			session.setAttribute("User", email);
	
			
			
		}
		response.getWriter().write(message);
	}
}