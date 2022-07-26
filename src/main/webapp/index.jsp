<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import ="javax.servlet.*,java.text.*" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>The7 - Index</title>
</head>
<body>

	<jsp:include page="header.html" />

<<<<<<< HEAD
<a href="index.jsp#"> <img src="WebContent/Image/logo.25.png" style="width:42px;height:42px;"> </a>


=======
	<img src="WebContent/Image/logo.25.png" />
>>>>>>> branch 'main' of https://github.com/Trainee-Project/7.git

	<ol>
		<li>Planner (Waiting on _ to finish so _ can link it)</li>
		<li>Projects (waiting on Andre to finish so Tom can link it)</li>
		<li>Database (Waiting on Aaron / Nathan to finish it so Tom can link it)</li>
		<li>Roles</li>
		
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>
		<li>DEAD SPACE</li>

<<<<<<< HEAD
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
=======
	<table border="1">
>>>>>>> branch 'main' of https://github.com/Trainee-Project/7.git

		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Name</th>
		</tr>



		<c:forEach var="tempEmployees" items="${Employee}">


			<tr>
				<td>"${tempEmployees.fullName}"</td>
				<td>"${tempEmployees.onProject}"</td>
			</tr>

		</c:forEach>
	</table>

	<jsp:include page="footer.html" />
</body>
</html>