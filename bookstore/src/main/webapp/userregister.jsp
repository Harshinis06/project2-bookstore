<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="/myproject2BookStore/src/main/webapp/css/resource/bootstrap.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#sub{
color:chocolate;
} 

body{
margin-left:460px;
margin-top:100px;
font-family:Monospace;
}
.card{
border:none;
}

input[type=text] {
	
     border:0;
     box-shadow:0 0 15px 4px rgba(0,0,0,0.19);
     font-family:Monospace;
     border-radius:10px;
    
}
input[type=password] {
font-family:Monospace;
     border:0;
     box-shadow:0 0 15px 4px rgba(0,0,0,0.19);
      border-radius:10px;
}

</style>
</head>
<body>
<div class="container" align="center" >
            <div class="row">
                <div class="col-md-5 ">
<form:form action="saveuser" modelAttribute="users">
 <div class="card mt-6" >
                    <div class="card-header ">
                            User Registration
                       </div>
 <div class="card-body" id="cardhead">
                       
                        <table>
                        <tr><td> name</td></tr>
                      <tr><td><form:input path="name"/></td>
                        </tr>
  <tr><td>email</td></tr>
 <tr><td>  <form:input path="email"/></td>
                        </tr>
<tr><td> password </td></tr>
 <tr><td><form:input type="password" path="password"/> </td> </tr>
 
<tr><td>mobilenumber</td></tr>
<tr><td><form:input  path="mobilenumber"/></td> </tr>
</table>
 </div> 
    <div class="card-footer" id="cardfooter">
 <input type="submit" value="Register" class="btn" id="sub">
  </div>
 </div> 
</form:form>
            
          </div>  
 </div>  
 </div>
</body>
</html>