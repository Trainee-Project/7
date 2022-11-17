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

	@Resource(name = "jdbc/employee_planner")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		// create dbutil and pass in conn pool/datasource
		super.init();
		try {
			Dbutil = new dbUtil(dataSource);

		} catch (Exception exc) {
			System.out.print("error");
			throw new ServletException(exc);

		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
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
				listProject(request, response);
				break;

			case "ADD":
				addProject(request, response);
				break;

			case "LOAD":
				loadProject(request, response);
				break;

			case "UPDATE":
				updateProject(request, response);
				break;
			case "DELETE":
				deleteProject(request, response);
				break;
			default:
				listProject(request, response);
			}

		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}

	private void addProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student info from form data
		int projectId = Integer.parseInt(request.getParameter("Project ID"));
		String projectName = request.getParameter("Project Name");
		String projectStatus = request.getParameter("Project Status");
		String startDate = request.getParameter("Start Date");
		String endDate = request.getParameter("End Date");

		// create a new student object
		Project theProject = new Project(projectId, projectName, projectStatus, startDate, endDate);

		// add the student to the database
		Dbutil.addProject(theProject);

		// send back to main page (the student list)
		listProject(request, response);
	}

	private void listProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// get expmloyyes from dbutil
		List<Project> project = Dbutil.getProjects();
		// add employees to request
		request.setAttribute("PROJECT_LIST", project);
		// send to jsp (view)pw.println("<div
		// style='margin:auto;width:900px;margin-top:100px;'>");

		RequestDispatcher dispatcher = request.getRequestDispatcher("projectView.jsp");
		dispatcher.forward(request, response);

	}

	private void loadProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student id from form data
		int theProjectId = Integer.parseInt(request.getParameter("ID"));

		// get student from database (db util)
		Project theProject = Dbutil.getProject(theProjectId);

		// place student in the request attribute
		request.setAttribute("THE_PROJECT", theProject);

		// send to jsp page: update-student-form.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateProject.jsp");
		dispatcher.forward(request, response);

	}

	private void updateProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student info from form data
		int projectId = Integer.parseInt(request.getParameter("Project_ID"));
		String projectName = request.getParameter("Project_Name");
		String projectStatus = request.getParameter("Project_Status");
		String startDate = request.getParameter("Start_Date");
		String endDate = request.getParameter("End_Date");
		// create a new student object
		Project theProject = new Project(projectId, projectName, projectStatus, startDate, endDate);

		// perform update on database
		Dbutil.updateProject(theProject);

		// send them back to the "list students" page
		listProject(request, response);
	}

	private void deleteProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

// read student id from form data
		int theProjectId = Integer.parseInt(request.getParameter("ID"));

// delete student from database
		Dbutil.deleteProject(theProjectId);

// send them back to "list students" page
		listProject(request, response);
	}
}