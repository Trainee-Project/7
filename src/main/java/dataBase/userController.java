package dataBase;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class userController
 */
@WebServlet("/UserController")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private dbUtil Dbutil;

	@Resource(name = "jdbc/employee_planner")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		try {
			Dbutil = new dbUtil(dataSource);

		} catch (Exception exc) {
			System.out.print("error");
			throw new ServletException(exc);

		}
		super.init();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String theCommand = request.getParameter("command");


			switch (theCommand) {
			case "login":
				loadUser(request, response);
				break;
			default:
				throw new ServletException();
			}

		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}
	
	private void loadUser(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String username = request.getParameter("username");
		String password = request.getParameter("password");


		user theUser = Dbutil.getUser(username,password);

		request.setAttribute("THE_USER", theUser);

		RequestDispatcher dispatcher = request.getRequestDispatcher("loginform.jsp");
		Cookie cookie = new Cookie(username,"user");
		response.addCookie(cookie);
		dispatcher.forward(request, response);

	}}

	
