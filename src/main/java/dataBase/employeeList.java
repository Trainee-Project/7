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



@WebServlet("/List")
public class employeeList extends HttpServlet {
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
			listEmployees(request,response);
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	private void listEmployees(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//get expmloyyes from dbutil
		List<Employee> Employees =Dbutil.getEmployees();
		//add employees to request
		request.setAttribute("EMPLOYEES_LIST", Employees);
		//send to jsp (view)pw.println("<div style='margin:auto;width:900px;margin-top:100px;'>");
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request,response);
		
	}}



