<!DOCTYPE html>
<html>

<head>
<title>Update Student</title>
</head>
<body>
	<jsp:include page="header.html" />
	<h3>Update Employee</h3>

	<form action="EmployeeList" method="GET">

		<input type="hidden" name="command" value="UPDATE" /> <input
			type="hidden" name="ID" value="${THE_EMPLOYEE.id}" />

		<table>
			<tbody>
				<tr>
					<td><label>ID</label></td>
					<td><input type="text" name="ID" value="${THE_EMPLOYEE.id}" /></td>
				</tr>

				<tr>
					<td><label>Name</label></td>
					<td><input type="text" name="Name"
						value="${THE_EMPLOYEE.name}" /></td>
				</tr>

				<tr>
					<td><label>Active</label></td>
					<td><input type="text" name="Active"
						value="${THE_EMPLOYEE.active}" /></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input type="text" name="Email"
						value="${THE_EMPLOYEE.email}" /></td>
				</tr>
				<tr>
					<td><label>Phone</label></td>
					<td><input type="text" name="Phone"
						value="${THE_EMPLOYEE.phone}" /></td>
				</tr>
				<tr>
					<td><label>Country</label></td>
					<td><input type="text" name="Country"
						value="${THE_EMPLOYEE.country}" /></td>
				</tr>
				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>

			</tbody>
		</table>
	</form>

	<div style="clear: both;"></div>

	<p>
		<a href="EmployeeList">Back to List</a>
	</p>
	</div>
	<jsp:include page="footer.html" />
</body>

</html>













