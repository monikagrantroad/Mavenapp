<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resource/jsfiles/bootstrap.min.css">
  <script src="resource/jsfiles/jquery.min.js"></script>
  <script src="resource/jsfiles/bootstrap.min.js"></script>
</head>
<body bgcolor="black">
<div class="container" style="background-color:black">

<ul class="list-inline">
    <li><a href="index.jsp">Home</a></li>
    <li><a href="Login.jsp">Login</a></li>
    <li><a href="register.jsp">Register</a></li>
    <li><a href="aboutus.jsp">About us</a></li>
  </ul>

 <div class="row">
   <div class="col-xs-4">
<div style="color:blue">
<form action="" method="post">
Enter username<input type="text" name="txtusername"/><br>
Enter password<input type="text" name="txtpass"/><br>
<input type="submit" value="Login" class="btn btn-primary">

</form>
</div>
</div>
</div>
</div>
</body>
</html>