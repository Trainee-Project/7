<%@ page import="javax.servlet.*,java.text.*, dataBase.*,java.util.*  "%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         
            
            for (int i = 0; i < cookies.length; i++) {
            	if (i==0) continue;
               cookie = cookies[i];
               
               
               
               out.print("Welcome : " + cookie.getName( ) + ",  ");
            }
            
           
      %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>The7 - Index</title>


</head>
<body>
	
	<jsp:include page="header.html" />

	

<h1>Welcome</h1>


	
 

	<jsp:include page="footer.html" />
</body>
</html>