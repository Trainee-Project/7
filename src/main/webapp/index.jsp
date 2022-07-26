<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import ="javax.servlet.*,java.text.*" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>The7 - Index</title>
</head>
<body>

	<jsp:include page="header.html" />

<a href="index.jsp#"> <img src="WebContent/Image/logo.25.png" style="width:42px;height:42px;"> </a>
    <h1><a href="RegiForm.jsp#">Register Here</a></h1>
    
	<ol>
	
	<li>	<a href="Project.html">Projects		</a></li>	
	<li>	<a href="Project.html">Planner		</a></li>	
	<li>	<a href="Project.html">Database		</a></li>	
	<li>	<a href="Project.html">Roles		</a></li>
		
		<li>Planner (Waiting on _ to finish so _ can link it)</li>
		<li>Database (Waiting on Aaron / Nathan to finish it so Tom can link it)</li>
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
	</ol>
	
	
<table border="1">
=======
	<table border="1">
>>>>>>> branch 'main' of https://github.com/Trainee-Project/7.git

		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Name</th>
		</tr>



<<<<<<< HEAD
		<c:forEach var="tempEmployees" items="${Employee}">


			<tr>
				<td>"${tempEmployees.fullName}"</td>
				<td>"${tempEmployees.onProject}"</td>
			</tr>

		</c:forEach>
	</table>
	
=======
=======
		
>>>>>>> branch 'main' of https://github.com/Trainee-Project/7.git

	<jsp:include page="footer.html" />
</body>
</html>