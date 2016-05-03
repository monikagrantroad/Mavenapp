<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resource/jsfiles/bootstrap.min.css">
  <script src="resource/jsfiles/jquery.min.js"></script>
  <script src="resource/jsfiles/bootstrap.min.js"></script>
 
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 60%;
      margin: auto;
  }
  a
  {
  text-decoration: none !important;
  }
  </style>
</head>

<body bgcolor="#000000">
  <div>
  </div>
 
  

<div class="container" style="background-color:black"><!-- div container -->
 
 

 <ul class="list-inline" style="font-size:30px;">
    <li><a href="index.jsp">Home</a></li>
    <li><a href="Login.jsp">Login</a></li>
    <li><a href="register.jsp">Register</a></li>
    <li><a href="aboutus.jsp">About us</a></li>
  </ul>

  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators" >
      <li data-target="#myCarousel" data-slide-to="0"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resource/imagespr/image8.jpg" class="img-rounded" alt="Chania" width="1000" height="100">
      </div>

      <div class="item">
        <img src="resource/imagespr/image2.jpg" class="img-rounded" alt="Chania" width="1000" height="100">
      </div>
    
      <div class="item">
        <img src="resource/imagespr/image11.png" class="img-rounded" alt="Flower" width="1000" height="100">
      </div>
  </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div> 

  
  
    <div class="row" style="margin-top: 2cm;">
    <div class="col-xs-4">
    
    <img src="resource/imagespr/image5.jpg"  class="img-circle" width="230" height="200">
    
    </div>
    <div class="col-xs-4">
    
     <img src="resource/imagespr/image9.jpg" class="img-circle" width="230" height="200">
    </div>
      <div class="col-xs-4">
     <img src="resource/imagespr/image7.jpg" class="img-circle" width="250" height="200">
    </div>
  </div>
  
  
  
  </div><!-- div container -->
  




  
  




</body>
</html>
