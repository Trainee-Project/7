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
	
<%-- 	//Home link 	--%>
<a href="index.jsp#"> <img src="WebContent/Image/HomeLogo.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Projects link 	--%>
<a href="Project.html#"> <img src="WebContent/Image/Project.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Planner link 	--%>
<a href="RegiForm.jsp#"> <img src="WebContent/Image/Register Logo.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Database link 	--%>
<a href="RegiForm.jsp#"> <img src="WebContent/Image/Register Logo.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Registration link 	--%>
<a href="RegiForm.jsp#"> <img src="WebContent/Image/Register Logo.png"
style="width: 150px; height: 150px;"></a>
	
	<ol>
		<li><a href="Project.html">Projects </a></li>
		<li><a href="Project.html">Planner </a></li>
		<li><a href="Project.html">Database </a></li>
		<li><a href="Project.html">Roles </a></li>

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