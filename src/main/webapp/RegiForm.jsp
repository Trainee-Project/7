<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css"></link>
<style>
	#frm{
	width:500px;
	margin:auto;
	margin-top:100px;
	}
	marquee{
		margin-top:10px;
		}
</style>
</head>
<body class="container-fluid">
	<marquee> <h2 class="text-primary">Registration Here</h2></marquee>

<form action= "project" method="post" class="form card" id="frm">
	<h2 class="bg-danger text-white card-header">Registration Form of Employee</h2>
	<table class= "table table hover">
	
	<tr>
	<td>Employee ID</td>
	<td><input type="Number" name="employeeID" required></td>
	</tr>
	
	<tr>
	<td>Name</td>
	<td><input type="text" name="employeeName" required></td>
	</tr>
	
	<tr>
	<td>Email</td>
	<td><input type="Email" name="email" required></td>
	</tr>
	
	<tr>
	<td>Mobile</td>
	<td><input type="text" name="moblie" required></td>
	</tr>

	<tr>
	<td>Skill List ID</td>
	<td><input type="text" name="SkillListID" required></td>
	</tr>
	
	
	<tr>
	<td>Country</td>
	<td><select name= "country">
		<option value= "Australia">Australia</option>
		<option value= "USA">USA</option>
		<option value= "UK">UK</option>
		<option value= "India">India</option>
		</select></td>
	</tr>
	<tr class="card-footer">
	<td><button type="submit" class= "btn btn-outline-success">Register</button></td>
	<td><button type="reset" class= "btn btn-outline-danger">Cancel</button></td>
	
	</tr>
	
	
	</table>
</form>

</body>
</html>