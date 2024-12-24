<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="/myproject2BookStore/src/main/webapp/css/resource/bootstrap.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- <link rel="stylesheet" href="homeh.css">  -->
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>



header{
   background-color:chocolate;
	}

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
           padding-left: 10px;
            text-decoration: none;
        }
            
            nav.responsive a {
                float: none;
                display: block;
                text-align: left;
            }
	
	.img1{
		position: relative;
	}
	.text1{
		position: absolute;
		top: 50%; left: 50%; 
		transform: translate(-50%, -50%); 
		text-align: center; 
		color: white; 
		font-size: 24px;
	}
	
	p{
		
         font-family:French Script MT;
		font-size: 60px;
	}
	a{
		text-decoration: none;
		color:burlywood
	}
	a:hover{
			text-decoration: none;
			color:brown;
		}
   #span{
	   color: darkslateblue;
	   font-size: 15px;
	   text-align: center;
   }
   
   .gradient-overlay {
            position: relative;
            background-image: url('https://www.roadlessread.com/wp-content/uploads/2023/04/Image-Of-A-Darkened-Room-With-A-Bookshelf-Ladder.jpg'); 
            background-size: cover;
            background-position: center;
            height: 300px; 
            width: 1550;
        }
        
         .gradient-overlay1 {
            position: relative;
            background-image: url('https://plus.unsplash.com/premium_photo-1679404108831-417d6561746b?q=80&w=1450&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            height: 300px; 
            width: 1550;
        }
        
         .gradient-overlay2{
            position: relative;
            background-image: url('https://images.pexels.com/photos/5039252/pexels-photo-5039252.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); 
            background-size: cover;
            background-position: center;
            height: 300px; 
            width: 1550;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to right, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.3));
        }

    
        .overlay-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            text-align: center;
            font-size: 24px;
        }
        
</style>

 
</head>
<body>
<header>
<div class="container">
<div class="row ">
<div class="col ml-3">
	<div class="page-header d-flex justify-content-between text-white mt-3 mb-4">
	<nav>
	 <a href="#" id="span"> <i class="bi bi-book"></i> BookStore</a>

	<a class="dropdown-toggle" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">BookType</a>
	<ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Fiction</a></li>
    <li><a class="dropdown-item" href="#">Non Fiction</a></li>
    <li><a class="dropdown-item" href="#">Sceintify</a></li>
  </ul>

<a  class="dropdown-toggle" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">language</a>
      <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Tamil</a></li>
    <li><a class="dropdown-item" href="#">English</a></li>
    <li><a class="dropdown-item" href="#">Hindi</a></li>
  </ul>

<a href="">AboutUs</a> 
</nav>
</div></div>

<div class="col mt-3">
</div>
<div class="col">
	<div class="page-header d-flex justify-content-between  mt-3 ">
		<nav><a href="">Contact Us</nav>
		<nav><a href="">Forgot possword</nav>
<!-- <nav><a href="adminregister.jsp" ml-8>sign up</a></nav> -->
<nav><a href="UserLogin.jsp">login</a></nav></div>
</div>
</div>

</div>
<div class="row">
 <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
        <div class="carousel-item active">
		 <div class="gradient-overlay">
        <div class="overlay"></div>
        <div class="overlay-text">
              <form>
	<pre>
<input  type="search" placeholder="search" size="30px" name="search"> <button type="button" class="btn btn-danger">Search</button>	</pre>
</form>
        </div>
    </div></div>  
          <div class="carousel-item">
			  <div class="gradient-overlay1">
        <div class="overlay"></div>
        <div class="overlay-text">
          	<p>A room without books is like a body without a soul</p>
          </div>
          </div></div>
          
          <div class="carousel-item">
			  <div class="gradient-overlay2">
        <div class="overlay"></div>
        <div class="overlay-text">
          	<p>If you dont like to read, you havent found the right book</p>
			</div>
          
        </div>
        </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
</div>

</header>
</body>
</html>