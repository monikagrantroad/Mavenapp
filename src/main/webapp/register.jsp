<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resource/jsfiles/bootstrap.min.css">
  <script src="resource/jsfiles/jquery.min.js"></script>
  <script src="resource/jsfiles/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="background-color:black">
<div class="navbar navbar-default" style="background-color:black;border: 2px solid #a1a1a1;">
<ul class="nav navbar-nav" >
    <li><a href="index.jsp">Home</a></li>
    <li><a href="Login.jsp">Login</a></li>
    <li><a href="register.jsp">Register</a></li>
    <li><a href="aboutus.jsp">About us</a></li>
  </ul>
  </div>
<div class="row">
   <div class="col-xs-12">
<form action="" method="post">
First Name<input type="text" name="txtusername"/><br>
Last Name<input type="text" name="txtpass"/><br>
Birth Date<input type="text" name="txtbirthdate"/><br>
<input type="submit" value="Register" class="btn btn-primary"/>
</form>
</div>
</div>
</div>
</body>
</html>