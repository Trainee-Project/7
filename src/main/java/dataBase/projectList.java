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
		super.init();
		try {
			Dbutil = new dbUtil(dataSource);

		} catch (Exception exc) {
			System.out.print("error");
			throw new ServletException(exc);

		}
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

		
		String projectName = request.getParameter("Project Name");
		String projectStatus = request.getParameter("Project Status");
		String startDate = request.getParameter("Start Date");
		String endDate = request.getParameter("End Date");

		Project theProject = new Project(projectName, projectStatus, startDate, endDate);

		Dbutil.addProject(theProject);

		listProject(request, response);
	}

	private void listProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Project> project = Dbutil.getProjects();
	
		request.setAttribute("PROJECT_LIST", project);
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("projectView.jsp");
		dispatcher.forward(request, response);

	}

	private void loadProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		int theProjectId = Integer.parseInt(request.getParameter("ID"));

		Project theProject = Dbutil.getProject(theProjectId);


		request.setAttribute("THE_PROJECT", theProject);

		RequestDispatcher dispatcher = request.getRequestDispatcher("updateProject.jsp");
		dispatcher.forward(request, response);

	}

	private void updateProject(HttpServletRequest request, HttpServletResponse response) throws Exception {

	
		int projectId = Integer.parseInt(request.getParameter("Project_ID"));
		String projectName = request.getParameter("Project_Name");
		String projectStatus = request.getParameter("Project_Status");
		String startDate = request.getParameter("Start_Date");
		String endDate = request.getParameter("End_Date");
		
		Project theProject = new Project(projectId, projectName, projectStatus, startDate, endDate);

		Dbutil.updateProject(theProject);

		listProject(request, response);
	}

	private void deleteProject(HttpServletRequest request, HttpServletResponse response) throws Exception {


		int theProjectId = Integer.parseInt(request.getParameter("ID"));

		Dbutil.deleteProject(theProjectId);


		listProject(request, response);
	}
}