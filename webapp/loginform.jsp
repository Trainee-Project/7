<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div id="container">
		<h3>Login</h3>

		<form action="UserController" method="GET">

			<input type="hidden" name="command" value="login" />

			<table>

				<tbody>

				
				
					<tr>
						<td><label>Username</label></td>
						<td><input type="text" name="username" /></td>

					</tr>
						<tr>
						<td><label>Password</label></td>
						<td><input type="text" name="password" /></td>

					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>

					</tr> 
				</tbody>
			</table>
		</form>
<p>
			
		</p>

	</div>
				
						
</body>

	<jsp:include page="footer.html" />

</body>
</html>