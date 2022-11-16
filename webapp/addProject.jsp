
<%@ page import="javax.servlet.*,java.text.*, dataBase.*,java.util.*  "%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.html" />
	
	
		<div id="container">
		<h3>Add Project</h3>
		
		<form action="ProjectList" method="GET">
		
			<input type="hidden" name="command" value="ADD" />
		
			<table>
			
				<tbody>
				
					<tr>
						<td><label>Project ID:</label></td>
						<td><input type="text" name="Project ID" /></td>
					</tr>

					<tr>
						<td><label>Project Name:</label></td>
						<td><input type="text" name="Project Name" /></td>
					</tr>

					<tr>
						<td><label>Project Status:</label></td>
						<td><input type="text" name="Project Status" /></td>
						
					</tr>
					
					<tr>
						<td><label>Start Date:</label></td>
						<td><input type="text" name="Start Date" /></td>
					</tr>
					
					<tr>
						<td><label>End Date:</label></td>
						<td><input type="text" name="End Date" /></td>
						
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
		
				</tbody>
			</table>		<p>
			<a href="EmployeeList">Back to List</a>
		</p>
		</form>
		</div>
	

	
	
	
	<jsp:include page="footer.html" />
</body>
</html>