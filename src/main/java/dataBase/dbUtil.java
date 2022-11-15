package dataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class dbUtil {
	private static DataSource dataSource;

	public dbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}

	public List<Employee> getEmployees() throws Exception {
		List<Employee> employees = new ArrayList<>();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		try {
			// get a connection
			myConn = dataSource.getConnection();

			// sql statement
			String sql = "select * from Employee";
			myStmt = myConn.createStatement();
			// exceute query
			myRs = myStmt.executeQuery(sql);

			// process result set
			while (myRs.next()) {
				// retrive data from set row
				int id = myRs.getInt("Person ID");
				String name = myRs.getString("Name");
				int active = myRs.getInt("Active");
				String email = myRs.getString("Email");
				int phone = myRs.getInt("Phone");
				String country = myRs.getString("country");
				// create new employee object
				Employee tempEmployee = new Employee(id, name, active, email, phone, country);
				// add to aray list
				employees.add(tempEmployee);
			}

			return employees;
		} finally {
			// close JDBC objects
			close(myConn, myStmt, myRs);
		}}


	public List<Project> getProjects() throws Exception {
			List<Project> project = new ArrayList<>();
			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;
			try {
				// get a connection
				myConn = dataSource.getConnection();

				// sql statement
				String sql = "select * from Project";
				myStmt = myConn.createStatement();
				// exceute query
				myRs = myStmt.executeQuery(sql);

				// process result set
				while (myRs.next()) {
					// retrive data from set row
					 int projectId = myRs.getInt("Project_ID");
					 String projectName= myRs.getString("Project_Name");
					 String projectStatus= myRs.getString("Project_Status");
				     String startDate = myRs.getString("Start_Date");
					 String endDate= myRs.getString("End_Date");
					// create new employee object
					Project tempProject = new Project(projectId,projectName,projectStatus,startDate,endDate);
					// add to aray list
					project.add(tempProject);
				}

				return project;
			} finally {
				// close JDBC objects
				close(myConn, myStmt, myRs);
			}}

	public static void addEmployee(Employee theEmployee) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			// get db connection
			myConn = dataSource.getConnection();

			// create sql for insert
			String sql = "insert into employee " + "values (?, ?, ?,?,?,?)";

			myStmt = myConn.prepareStatement(sql);

			// set the param values for the employee
			myStmt.setInt(1, theEmployee.getId());
			myStmt.setString(2, theEmployee.getName());
			myStmt.setInt(3, theEmployee.getActive());
			myStmt.setString(4, theEmployee.getEmail());
			myStmt.setInt(5, theEmployee.getPhone());
			myStmt.setString(6, theEmployee.getCountry());
			// execute sql insert
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, null);
		}
	}

	public static void addProject(Project theProject) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			// get db connection
			myConn = dataSource.getConnection();

			// create sql for insert
			String sql = "insert into project " + "values (?, ?, ?,?,?)";

			myStmt = myConn.prepareStatement(sql);

			// set the param values for the student
			myStmt.setInt(1, theProject.getProjectId());
			myStmt.setString(2, theProject.getProjectName());
			myStmt.setString(3, theProject.getProjectStatus());
			myStmt.setString(4, theProject.getStartDate());
			myStmt.setString(5, theProject.getEndDate());

			// execute sql insert
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, null);
		}
	}
	public static void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		try {
			if (myRs != null) {
				myRs.close();
			}
			if (myStmt != null) {
				myStmt.close();

			}
			if (myConn != null) {
				myConn.close();
			}

		} catch (Exception exc) {
			exc.printStackTrace();
		}}}


