<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Project Form</title>
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
 <marquee> <h2 class="text-primary">New Project Here</h2></marquee>
<form action= "project" method="post" class="form card" id="frm">
 <h2 class="bg-danger text-white card-header">New Project Form</h2>
 <table class= "table table hover">
 <tr>
 <td>Project Name</td>
 <td><input type="text" name="Project Name" required></td>
 </tr>
 <tr>
 <td>Project ID</td>
 <td><input type="number" name="Project ID" required></td>
 </tr>
 <tr>

 </tr>
 <tr>

 </tr>
 <tr>
 <td>Start Date</td>
 <td><input type="date" name="StartDate" required></td>
 </tr>
 <tr>
 <td>End Date</td>
 <td><input type="date" name="EndDate" required></td>
 </tr>
 <tr>
 <td>Project Manager</td>
 <td><select name= "Project Manager">
  <option value= "Nathan B.">Nathan B.</option>
  <option value= "Cing S.">Cing S.</option>
  <option value= "Tom M.">Tom M.</option>
  <option value= "Aaron H.">Aaron H.</option>
<option value= "Andre S.">Andre S.</option>
<option value= "Gabe Y.">Gabe Y.</option>
<option value= "Cameron S.">Cameron S.</option>
  </select></td>
 </tr>
 <tr class="card-footer">
 <td><button type="submit" class= "btn btn-outline-success">Submit</button></td>
 <td><button type="reset" class= "btn btn-outline-danger">Cancel</button></td>
 </tr>
 </table>
</form>
</body>
</html>

