<%@page import="java.util.List"%>
<%@page import="com.jsp.bookstore.entities.Bookdetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
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
table{
padding:10px;
width:100%;
text-align:center;
}
th{
color:brown;
}
tr:nth-child(even) {
background-color: #f2f2f2;
}
th,td{
padding:13px;
}
tr:hover {background-color: chocolate;
color:white;
}
</style>

</head>
<body>
<% List<Bookdetails> bookdetail=(List<Bookdetails>	)request.getAttribute("bookdetails"); %>
<TABLE class=" text-center">
 <th>BookId</th>
  <th>BookName</th>
  <th>BookGenre</th>
  <th>AuthorName</th>
  <th>Language</th>
  <th>BookCost</th>
  <th>Image</th>
  <th>Update</th>
  <th>Delete</th>
                   <% 
	for(Bookdetails book:bookdetail) {
	%>
    <tr>
    <td><%=book.getId() %></td>
	<td><%=book.getBookName() %></td>
	<td><%=book.getType() %></td>
	<td><%=book.getAuthorName() %></td>
	<td><%=book.getLanguage() %></td>
	<td><%=book.getCost() %></td>
	<td> <img src="data:image/jpeg;base64,<%= new String(org.apache.commons.codec.binary.Base64.encodeBase64(book.getImage())) %>" alt="Book Image" class="card-img-top"></td>
	<td><a href="editproduct?id=<%=book.getId() %>">Edit</a></td>
	<td><a href="deleteproduct?id=<%=book.getId() %>">Delete</a></td>
	</tr>
	<% }%>
 </TABLE>

</body>
</html>