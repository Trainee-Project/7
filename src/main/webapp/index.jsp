<%@ page import="javax.servlet.*,java.text.*, dataBase.*,java.util.*  "%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>The7 - Index</title>


</head>
<body>
	
	<jsp:include page="header.html" />
	
<%-- 	//Home link 	--%>
<a href="index.jsp"> <img src="WebContent/Image/Home.png"
style="width: 150px; height: 150px;"></a>

<%-- 	//Projects link 	
<a href="PjForm.html#"> <img src="WebContent/Image/Projects.png"
style="width: 150px; height: 150px;"></a>	--%>

<%-- 	//Planner link 	
<a href=" _ #"> <img src="WebContent/Image/Planner.png"
style="width: 150px; height: 150px;"></a>	--%>


<a href="employeeList.jsp"> <img src="WebContent/Image/Database.png"
style="width: 150px; height: 150px;"></a>	

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
	




	
 

	<jsp:include page="footer.html" />
</body>
</html>