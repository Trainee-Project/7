
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
</tr>




<c:forEach var="tempEmployee" items="${EMPLOYEES_LIST}">
<tr>
			<td>${tempEmployee.id}</td>
			<td>${tempEmployee.name}</td>
			<td>${tempEmployee.active}</td>
			<td>${tempEmployee.email}</td>
			<td>${tempEmployee.phone}</td>
			<td>${tempEmployee.country}</td>
						
			
			
			
		</tr>
</c:forEach>

</table>

	<jsp:include page="footer.html" />
</body>
</html>