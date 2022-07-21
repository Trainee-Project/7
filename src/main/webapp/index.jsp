<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The 7 Project</title>
</head>
<body>
	<jsp:include page="header.html" />

	<ol>


		<li>Planner</li>
		<li>Projects</li>
		<li>Database</li>
		<li>Roles</li>
	</ol>
<table border="1">

		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Name</th>
		</tr>

<c:forEach var="tempEmployees" items="${employees_list}">

	<tr>
	<td>${tempEmployees.fullName}</td>
	<td>${tempEmployees.onProject}</td>

	</tr>

</c:forEach>

</table>







	<img src="Image/logo.png" />
	<jsp:include page="footer.jsp" />
</body>
</html>