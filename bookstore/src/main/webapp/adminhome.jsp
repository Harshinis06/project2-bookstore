<%@page import="com.jsp.bookstore.entities.Bookdetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="/myproject2BookStore/src/main/webapp/css/resource/bootstrap.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- <link rel="stylesheet" href="adminhomee.css"> -->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
	.card-img-top{
	width:100%;
	height:50%;
		
	}
	.card-container{
	padding: 2px ;
	}
	.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}
	.text1{
		position: absolute;
		top: 50%; left: 50%; 
		transform: translate(-50%, -50%); 
		text-align: center; 
		color: white; 
		font-size: 24px;
	}
	.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
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
	   color:blue;
	   font-size: 20px;
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
            background: linear-gradient(to right, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.3)); /* Adjust gradient colors and transparency */
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
<body>
<header>
<div class="container">
<div class="row ">
<div class="col ml-3">
  <nav class="page-header d-flex justify-content-between  mt-3 mb-3 ">
      <a href="#" id="span"> <i class="bi bi-book"></i> BookStore</a>
        <a href="addbooks">Add Book</a>
        <a href="updatebooks">Update Book</a>
        <a href="viewall">ViewAllBook</a>
        <a href="#">About</a>
        <a href="#" >Contact</a>
        <a href="loginadmin.jsp">log out</a>
    </nav>
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
 <div class="container mt-3 card-container">
     <%   List<Bookdetails> bookDetails = (List<Bookdetails>)request.getAttribute("bookdetails");
                    if (bookDetails != null && !bookDetails.isEmpty()) {%>
      <!--   <div class="row"> -->
            <!--  <div class="col-md-5">  -->
                <h3>Book Details</h3>
                <div class="row mr-2">
                    <%
                       
                            for (Bookdetails book : bookDetails) {
                             
                    %>
                    <div class="col-md-5"> 
                        <div class="card mb-3">
                <img src="data:image/jpeg;base64,<%= new String(org.apache.commons.codec.binary.Base64.encodeBase64(book.getImage())) %>" alt="Book Image" class="card-img-top">    
                        <div class="card-body">
                               <%= book.getAuthorName() %><br>
                             <%=book.getLanguage() %><br>
                               <%= book.getType() %><br>
                             <%= book.getCost() %>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        } else {
                    %>
                    <div class="col-md-12">
                        <div class="alert alert-warning" role="alert">
                            there are no books available!
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
       <!--  </div>
    </div>
 -->
   <!-- 

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> -->
</body>
</html>