
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h3>Add Employee</h3>

		<form action="EmployeeList" method="GET">

			<input type="hidden" name="command" value="ADD" />

			<table>

				<tbody>

					<tr>

						<td><label>ID:</label></td>
						<td><input type="text" name="ID" /></td>
					</tr>

					<tr>
						<td><label>Name:</label></td>
						<td><input type="text" name="Name" /></td>
					</tr>

					<tr>
						<td><label>Active:</label></td>
						<td><input type="text" name="Active" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="Email" /></td>

					</tr>
					<tr>
						<td><label>Phone:</label></td>
						<td><input type="text" name="Phone" /></td>

					</tr>
						<tr>
						<td><label>Country:</label></td>
						<td><input type="text" name="Country" /></td>

					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>

					</tr>
				</tbody>
			</table>
		</form>
<p>
			<a href="EmployeeList">Back to List</a>
		</p>

	</div>
	<jsp:include page="footer.html" />
</body>
</html>