<!DOCTYPE html>
<html>

<head>
<title>Update</title>

</head>

<body>
	<jsp:include page="header.html" />
	<h3>Update Project</h3>

	<form action="ProjectList" method="GET">

		<input type="hidden" name="command" value="UPDATE" /> <input
			type="hidden" name="ID" value="${THE_PROJECT.projectId}" />

		<table>
			<tbody>
				<tr>
				
					<td><input type="hidden" name="Project_ID"
						value="${THE_PROJECT.projectId}" readonly /></td>
				</tr>

				<tr>
					<td><label>Project Name</label></td>
					<td><input type="text" name="Project_Name"
						value="${THE_PROJECT.projectName}" /></td>
				</tr>

				<tr>
					<td><label>Project Status</label></td>
					<td><input type="text" name="Project_Status"
						value="${THE_PROJECT.projectStatus}" /></td>
				</tr>
				<tr>
					<td><label>Start Date</label></td>
					<td><input type="text" name="Start_Date"
						value="${THE_PROJECT.startDate}" /></td>
				</tr>
				<tr>
					<td><label>End Date</label></td>
					<td><input type="text" name="End_Date"
						value="${THE_PROJECT.endDate}" /></td>
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
		<a href="ProjectList">Back to List</a>
	</p>
	</div>
	<jsp:include page="footer.html" />
</body>

</html>






