<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.*,java.text.*, dataBase.*,java.util.*  "%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>The7 - Index</title>


<%-- 	
// 	// get the employees from the request object (sent by servlet)
// 	List<Employee> theEmployees = 
// 	(List<Employee>) request.getAttribute("EMPLOYEES_LIST");
 --%>

</head>
<body>
	
	<jsp:include page="header.html" />
	<a href="index.jsp#"> <img src="WebContent/Image/logo.25.png"
		style="width: 42px; height: 42px;">
	</a>
	<h1>
		<a href="RegiForm.jsp#">Register Here</a>
	</h1>

	<ol>
		<li><a href="Project.html">Projects </a></li>
		<li><a href="Project.html">Planner </a></li>
		<li><a href="Project.html">Database </a></li>
		<li><a href="Project.html">Roles </a></li>

		<li>Planner (Waiting on _ to finish so _ can link it)</li>
		<li>Database (Waiting on Aaron / Nathan to finish it so Tom can
			link it)</li>
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


		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Name</th>
		</tr>
<%--
		<%
		for (Employee tempEmployee : theEmployees) {
		%>

		<tr>
			<td><%=tempEmployee.getId()%></td>
			<td><%=tempEmployee.getName()%></td>
			
		</tr>

		<%
		}
		%>
 --%>
	</table>

	<jsp:include page="footer.html" />
</body>
</html>