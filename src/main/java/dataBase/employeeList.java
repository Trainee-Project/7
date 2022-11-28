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
		try {
			Dbutil = new dbUtil(dataSource);

		} catch (Exception exc) {
			System.out.print("error");
			throw new ServletException(exc);

		}
		super.init();
	}


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("command");

			if (theCommand == null) {
				theCommand = "LIST";
			}

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

	private void addEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String name = request.getParameter("Name");
		int active = Integer.parseInt(request.getParameter("Active"));
		String email = request.getParameter("Email");
		int phone = Integer.parseInt(request.getParameter("Phone"));
		String country = request.getParameter("Country");
		Employee theEmployee = new Employee(name, active, email, phone, country);

		Dbutil.addEmployee(theEmployee);

		listEmployees(request, response);
	}

	private void listEmployees(HttpServletRequest request, HttpServletResponse response) throws Exception {

	
		List<Employee> Employees = Dbutil.getEmployees();
	
		request.setAttribute("EMPLOYEES_LIST", Employees);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("employeeView.jsp");
		dispatcher.forward(request, response);

	}

	private void loadEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int theEmployeeId = Integer.parseInt(request.getParameter("ID"));

		Employee theEmployee = Dbutil.getEmployee(theEmployeeId);

		request.setAttribute("THE_EMPLOYEE", theEmployee);

		RequestDispatcher dispatcher = request.getRequestDispatcher("updateEmployee.jsp");
		dispatcher.forward(request, response);

	}

	private void updateEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int id = Integer.parseInt(request.getParameter("ID"));
		String name = request.getParameter("Name");
		int active = Integer.parseInt(request.getParameter("Active"));
		String email = request.getParameter("Email");
		int phone = Integer.parseInt(request.getParameter("Phone"));
		String country = request.getParameter("Country");

		Employee theEmployee = new Employee(id, name, active, email, phone, country);

		Dbutil.updateEmployee(theEmployee);

		listEmployees(request, response);
	}

	private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int theEmployeeId = Integer.parseInt(request.getParameter("ID"));

		Dbutil.deleteEmployee(theEmployeeId);

		listEmployees(request, response);
	}
}
