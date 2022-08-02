package dataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.sql.DataSource;

import com.mysql.cj.exceptions.RSAException;

import java.util.List;

public class dbUtil {
	private DataSource dataSource;

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
			String sql = "select * from People";
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
		}

	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
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
		}
	}
}
