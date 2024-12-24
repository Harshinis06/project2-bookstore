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


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
margin-left:460px;
margin-top:100px;
font-family:Monospace;
}
 .card{
border:none;
} 

input[type=email] {
	
     border:0;
     box-shadow:0 0 15px 4px rgba(0,0,0,0.19);
     font-family:Monospace;
     border-radius:5px;
    
}
input[type=password] {
font-family:Monospace;
     border:0;
     box-shadow:0 0 15px 4px rgba(0,0,0,0.19);
      border-radius:5px;
}
#sub{
border:none;
color:chocolate;
}
</style>
</head>
<body>
<div class="container" align="center" >
            <div class="row">
                <div class="col-md-5 ">
               <form action="loggedinadmin" method="post">                   
                   <div class="card mt-6">
                    <div class="card-header ">
                    Login
                    </div>
                    <div class="card-body">
                     <table>
                        <tr><td>Email</td></tr>
                         <tr><td> <input type="email" name="email" placeholder="Your email.."  size="25">
                         </tr>
                        
                         <tr><td>Password</td></tr>
                         <tr><td><input type="password" name="password" placeholder="Your password.."  size="25">
                         </td></tr>
                        </table>
                    
                    </div>
                      <div class="card-footer" id="cardfooter">
                      <input type="submit" value="Login" id="sub">
                    </div>
</div>
</form>
</div>
</div>
</div>
</body>
</html>