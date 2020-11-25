package host;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**s
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().write("ABCD");

		System.out.println("Login.java");
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		String url;
		boolean login ;
		if(id.equal("host")&&pass.equals("admin")) {
			login = True;
			url = "/home.jsp";
		}else {
			url = "/login.jsp";
		}

		request.setAttribute("login",login );
		request.getRequestDispatcher(url).forward(request, response);

	}

}
