
<%@ page import="javax.servlet.*,java.text.*, dataBase.*,java.util.*  "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.html" />

	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Active</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Country</th>
			<th><a href="addEmployee.jsp">Add</a></th>
		</tr>




		<c:forEach var="tempEmployee" items="${EMPLOYEES_LIST}">
			<!-- set up a link for each student -->
			<c:url var="tempLink" value="EmployeeList">
				<c:param name="command" value="LOAD" />
				<c:param name="ID" value="${tempEmployee.id}" />
			</c:url>
			<c:url var="deleteLink" value="EmployeeList">
				<c:param name="command" value="DELETE" />
				<c:param name="ID" value="${tempEmployee.id}" />
			</c:url>
			<tr>
				<td>${tempEmployee.id}</td>
				<td>${tempEmployee.name}</td>
				<td>${tempEmployee.active}</td>
				<td>${tempEmployee.email}</td>
				<td>${tempEmployee.phone}</td>
				<td>${tempEmployee.country}</td>
				<td><a href="${tempLink}">Update</a></td>
				<td><a href="${deleteLink}">Delete</a></td>




			</tr>
		</c:forEach>

	</table>

	<jsp:include page="footer.html" />
</body>
</html>