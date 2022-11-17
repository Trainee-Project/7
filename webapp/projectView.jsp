
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
			<th>Project ID</th>
			<th>Project Name</th>
			<th>Project Status</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>(Dates Are In (YYYY/MM/DD))</th>
			<th><a href="addProject.jsp">Add</a></th>
		</tr>




		<c:forEach var="tempProject" items="${PROJECT_LIST}">
			<c:url var="tempLink" value="ProjectList">
				<c:param name="command" value="LOAD" />
				<c:param name="ID" value="${tempProject.projectId}" />
			</c:url>
			<c:url var="deleteLink" value="ProjectList">
				<c:param name="command" value="DELETE" />
				<c:param name="ID" value="${tempProject.projectId}" />
			</c:url>
			<tr>
				<td>${tempProject.projectId}</td>
				<td>${tempProject.projectName}</td>
				<td>${tempProject.projectStatus}</td>
				<td>${tempProject.startDate}</td>
				<td>${tempProject.endDate}</td>
				<td><a href="${tempLink}">Update</a></td>
				<td><a href="${deleteLink}">Delete</a></td>


			</tr>
		</c:forEach>

	</table>

	<jsp:include page="footer.html" />
</body>
</html>
