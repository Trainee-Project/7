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

@WebServlet("/EmployeeList")
public class employeeList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private dbUtil Dbutil;

	@Resource(name = "jdbc/employee_planner")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		// create dbutil and pass in conn pool/datasource
		try {
			Dbutil = new dbUtil(dataSource);

		} catch (Exception exc) {
			System.out.print("error");
			throw new ServletException(exc);

		}
		super.init();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");

			// if the command is missing, then default to listing students
			if (theCommand == null) {
				theCommand = "LIST";
			}

			// route to the appropriate method
			switch (theCommand) {

			case "LIST":
				listEmployees(request, response);
				break;

			case "ADD":
				addEmployee(request, response);
				break;

			case "LOAD":
				loadEmployee(request, response);
				break;

			case "UPDATE":
				updateEmployee(request, response);
				break;
			case "DELETE":
				deleteEmployee(request, response);
				break;
			default:
				listEmployees(request, response);
			}

		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}

	private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student id from form data
		int theEmployeeId = Integer.parseInt(request.getParameter("ID"));

		// delete student from database
		Dbutil.deleteEmployee(theEmployeeId);

		// send them back to "list students" page
		listEmployees(request, response);
	}

	private void addEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// read student info from form data
		int id = Integer.parseInt(request.getParameter("ID"));
		String name = request.getParameter("Name");
		int active = Integer.parseInt(request.getParameter("Active"));
		String email = request.getParameter("Email");
		int phone = Integer.parseInt(request.getParameter("Phone"));
		String country = request.getParameter("Country");
		// create a new student object
		Employee theEmployee = new Employee(id, name, active, email, phone, country);

		// add the student to the database
		Dbutil.addEmployee(theEmployee);

		// send back to main page (the student list)
		listEmployees(request, response);
	}

	private void listEmployees(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// get expmloyyes from dbutil
		List<Employee> Employees = Dbutil.getEmployees();
		// add employees to request
		request.setAttribute("EMPLOYEES_LIST", Employees);
		// send to jsp (view)pw.println("<div
		// style='margin:auto;width:900px;margin-top:100px;'>");

		RequestDispatcher dispatcher = request.getRequestDispatcher("employeeView.jsp");
		dispatcher.forward(request, response);

	}

	private void loadEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student id from form data
		int theEmployeeId = Integer.parseInt(request.getParameter("ID"));

		// get student from database (db util)
		Employee theEmployee = Dbutil.getEmployee(theEmployeeId);

		// place student in the request attribute
		request.setAttribute("THE_EMPLOYEE", theEmployee);

		// send to jsp page: update-student-form.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateEmployee.jsp");
		dispatcher.forward(request, response);

	}

	private void updateEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student info from form data
		int id = Integer.parseInt(request.getParameter("ID"));
		String name = request.getParameter("Name");
		int active = Integer.parseInt(request.getParameter("Active"));
		String email = request.getParameter("Email");
		int phone = Integer.parseInt(request.getParameter("Phone"));
		String country = request.getParameter("Country");

		// create a new student object
		Employee theEmployee = new Employee(id, name, active, email, phone, country);

		// perform update on database
		Dbutil.updateEmployee(theEmployee);

		// send them back to the "list students" page
		listEmployees(request, response);
	}
}