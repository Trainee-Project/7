
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

</tr>




<c:forEach var="tempProject" items="${PROJECT_LIST}">
<tr>
			<td>${tempProject.projectId}</td>
			<td>${tempProject.projectName}</td>
			<td>${tempProject.projectStatus}</td>
			<td>${tempProject.startDate}</td>
			<td>${tempProject.endDate}</td>
		</tr>
</c:forEach>

</table>

	<jsp:include page="footer.html" />
</body>
</html>