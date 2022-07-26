package servlet;

import java.util.ArrayList;
import java.util.List;

public class employeeUtil {
	public static List<Employees> getEmployees() {
		// Create empty list
		List<Employees> Employees = new ArrayList<>();
		/// the "database"
		Employees.add(new Employees("Daver", false));
		Employees.add(new Employees("Daver", false));
		Employees.add(new Employees("Daver", false));
		Employees.add(new Employees("Daver", false));
		Employees.add(new Employees("Daver", false));
		// return list
		return Employees;
	}
}
