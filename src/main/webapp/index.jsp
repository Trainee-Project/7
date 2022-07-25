<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>The7 - Index</title>
</head>
<body>

<jsp:include page="header.html"/>

 <img src ="WebContent/Image/logo.25.png" />

	<ol>
		<li>Planner</li>
		<li>Projects</li>
		<li>Database</li>
		<li>Roles</li>
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>

		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>		


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

	<jsp:include page="footer.html" />
</body>
</html>