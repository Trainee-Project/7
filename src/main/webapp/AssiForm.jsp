<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The Seven</title>
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
	<marquee> <h2 class="text-primary">Assigned Detail Here</h2></marquee>

<form action= "project" method="post" class="form card" id="frm">
	<h2 class="bg-danger text-white card-header">Assigned Detail</h2>
	<table class= "table table hover">
	
	<tr>
	<td>Employee ID</td>
	<td><input type="text" name="employeeID" required></td>
	</tr>
	
	<tr>
	<td>Project ID</td>
	<td><input type="text" name="porjectID" required></td>
	</tr>
	
	
	<tr>
	<td>Start Date of Assignment</td>
	<td><input type="date" name="StartDateofAssignment" required></td>
	</tr>
	
	<tr>
	<td>End Date of Assignment</td>
	<td><input type="date" name="EndDateOfAssignment" required></td>
	</tr>
	
	
	

	<tr class="card-footer">
	<td><button type="submit" class= "btn btn-outline-success">Submit</button></td>
	<td><button type="reset" class= "btn btn-outline-danger">Cancel</button></td>
	
	</tr>
	
	
	</table>
</form>

</body>
</html>