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
<a href="index.jsp#"> <img src="WebContent/Image/Home.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Projects link 	
<a href="PjForm.html#"> <img src="WebContent/Image/Projects.png"
style="width: 150px; height: 150px;"></a>	--%>

<%-- 	//Planner link 	
<a href=" _ #"> <img src="WebContent/Image/Planner.png"
style="width: 150px; height: 150px;"></a>	--%>

<%-- 	//Database link 	
<a href=" _ #"> <img src="WebContent/Image/Database.png"
style="width: 150px; height: 150px;"></a>	--%>

<%-- 	//Add Employee link 	--%>
<a href="_#"> <img src="WebContent/Image/AddEmployee.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//View Employee link 	--%>
<a href="_ #"> <img src="WebContent/Image/ViewEmployee.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Add Project link 	--%>
<a href="AddProject.jsp#"> <img src="WebContent/Image/AddProject.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//View Project link 	--%>
<a href="_ #"> <img src="WebContent/Image/ViewProject.png"
style="width: 150px; height: 150px;"></a>
	
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

	<jsp:include page="footer.html" />
</body>
</html>