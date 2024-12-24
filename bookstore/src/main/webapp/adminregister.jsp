<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="/myproject2BookStore/src/main/webapp/css/resource/bootstrap.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style>

#subs{
color:chocolate;
} 

body{
margin-left:460px;
margin-top:100px;
font-family:Monospace;
/*  background-image: url('https://images.pexels.com/photos/5039252/pexels-photo-5039252.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); 
            background-size: cover;
            background-position: center;
          filter: blur(8px);
          overflow: hidden;
           position: relative; color: white; 	
    padding: 20px; */
}

/* form{
 background-color: rgba(0, 0, 0, 0.4);
 color: white;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
} */
.card{
border:none;
background-color: rgba(0, 0, 0, 0.4);
 color: white;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
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
                 <form action="saveadmin" method="post" name="adminreg" onsubmit="return validation()" >
                    <div class="card mt-6" >
                    <div class="card-header ">
                            Admin Registration
                       </div>
                        <div class="card-body" id="cardhead">
                       
                        <table>
                        <tr><td>Name</td></tr>
                           <tr><td> <input type="text" name="name" placeholder="Your name.."  size="30"></td>
                        </tr>
                         
                         <tr><td>Email</td></tr>
                         <tr><td> <input type="text" name="email" placeholder="Your email.."  size="30">
                         </tr>
                         
                         <tr><td>Password</td></tr>
                         <tr><td><input type="password" name="password" placeholder="Your password.."  size="30">
                         </td></tr>

                         </table>
                        </div> 
                        <div class="card-footer" id="cardfooter">
                        
                         <input type="submit" value="Register" class="btn" id="subs">
                           <a href="loginadmin.jsp" class="btn " id="subs">Login</a>
                        </div>
                        
                        </div> 
                        </form>
          </div>  
 </div>  
 </div>
 <script>
 function validation(){
	 var usname=document.adminreg.aname.value;
	 var usemail=document.adminreg.aemail.value;
	 var uspass=document.adminreg.apassword.value;
	 
	 if(usname==null || usname==""){
		// document.getElementById("usname").innerHTML="* insert all data";
     return false;}
     else  if(usemail==null ||usemail==""){
	  //document.getElementById("usemail").innerHTML="* insert all data";
     return false;}
     else if(uspass==null || uspass==""){
    	//	 document.getElementById("uspass").innerHTML="* insert all data";
     return false;}
     else{
    	 alert("registration successfully")
     }
 }
 </script>          
</body>
</html>