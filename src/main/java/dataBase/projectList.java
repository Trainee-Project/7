package dataBase;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;



@WebServlet("/ProjectList")
public class projectList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private dbUtil Dbutil;
	
	@Resource(name="jdbc/employee_planner")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		//create dbutil and pass in conn pool/datasource
		try {
			Dbutil =new dbUtil(dataSource);
			
		}
		catch(Exception exc) {
			System.out.print("error");
			throw new ServletException(exc);
			
		}
		super.init();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//list employees in mvc way
		try {
			listProject(request,response);
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	private void listProject(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//get expmloyyes from dbutil
		List<Project> project =Dbutil.getProjects();
		//add employees to request
		request.setAttribute("PROJECT_LIST", project);
		//send to jsp (view)pw.println("<div style='margin:auto;width:900px;margin-top:100px;'>");
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("projectView.jsp");
		dispatcher.forward(request,response);
		
	}}

