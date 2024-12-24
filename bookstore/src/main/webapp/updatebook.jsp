<%@page import="com.jsp.bookstore.entities.Bookdetails"%>
<%@page import="java.util.List"%>
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
img{
height:50px;
width:10px;
}
body{
margin-left:460px;
margin-top:100px;
font-family:Monospace;
}
.card{
border:none;
}
#cardfooter{
color:chocolate;
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
input[type=number] {
font-family:Monospace;
     border:0;
     box-shadow:0 0 15px 4px rgba(0,0,0,0.19);
      border-radius:10px;
}

a{
text-decoration:none;
}

</style>

</head>
<body>
<% Bookdetails bk=(Bookdetails)request.getAttribute("bookedit"); %>
<div class="container" align="center" >
            <div class="row">
                <div class="col-md-5 ">
<form  action="updatebook" method="post">
 <div class="card mt-6" >
                    <div class="card-header ">
                    Update Books Detailes
                      </div>
                      <div class="card-body" id="cardhead">
                          
                          <table>
 <tr>
<td>BookId:</td></tr>
<tr><td><input type="number" value=<%=bk.getId() %> name="bookId" size="25" readonly="true"/></td>
</tr> 
 
<tr>
<td>BookName:</td></tr>
<tr><td><input type="text" value=<%=bk.getBookName() %> name="bookN" size="25"/></td>
</tr>
<tr>
<td>Cost:</td></tr>
<tr><td><input type="number" value=<%=bk.getCost() %> name="costb" size="25"/></td>
</tr>
<tr>
<td> Language:</td></tr>
<tr><td><input type="text"  name="lang" value=<%=bk.getLanguage() %> size="25"/></td>
</tr>
<tr>
<td> AuthorName:</td></tr>
<tr><td><input  type="text" name="authorN" value=<%=bk.getAuthorName() %> size="25"/></td>
</tr>
<tr>
<td>BookType:</td></tr>
<tr><td><input type="text" value=<%=bk.getType() %> name="bookT" size="25"/></td>
</tr>
 <tr>
<td>UploadImage:</td></tr>
<tr><td><input type="file" name="file" value=<%=bk.getImage() %> alt="Book Image" class="card-img-top"></td>
</tr>   
</table>
</div>
<div class="card-footer" >
<tr><td></td></tr>
<tr><td><input type="submit" id="cardfooter" onclick="showAlert()"/></td></tr>
<tr><td><a href="adminhome.jsp"  id="cardfooter">home</a></td></tr>
</div>
</div>
</form>
</div>
</div>
</div>

<script type="text/javascript">
    function showAlert() {
        alert("Book details will be saved!");
    }
</script>


</body>
</html>