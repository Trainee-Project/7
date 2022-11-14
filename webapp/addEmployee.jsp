<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.html" />
	<div id="container">
		<h3>Add Student</h3>

		<form action="StudentControllerServlet" method="GET">

			<input type="hidden" name="command" value="ADD" />

			<table>

				<tbody>

					<tr>

						<td><label>First name:</label></td>
						<td><input type="text" name="firstName" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>

					</tr>
				</tbody>
			</table>
		</form>

	
	</div>
	<jsp:include page="footer.html" />
</body>
</html>