<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<% String ss =request.getParameter("Id");
		System.out.println("my value" +" "+ ss); %>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table {
	font-family: cursive, sans-serif;
	font-size: 18px;
	border-collapse: collapse;
	color: black;
	width: 100%;
}

td, th {
	border: 3px solid #dddddd;
	text-align: left;
	padding: 14px;
}

</style>
</head>
<body>
		<c:forEach items="${list}" var="b" >
	
<form action="/sintecone/addQ?Id=${b.bId}"  method="get">
<h2 style="color: brown; font-size: 34px">Book Data:</h2>

	<table>
		<tr>
			<th>Book id</th>
			<th>Book name</th>
			<th>Category</th>
			<th>Author</th>
			<th>Status</th>
			<th>Quantity</th>
		</tr>
		<tr>


 				<td><input name="Id" value="${b.bId}" readonly></td>
   				<td>${b.book}</td>
				<td>${b.category}</td>
				<td>${b.authour}</td>
				<td>${b.status}</td>
				<td><input name="q" value="${b.quantity}" readonly></td>
			</tr>
	</table>

	
	Increase the Quantity:
	<input type="text"  name="quantity">
	
	<button type="submit">Submit</button>
</form>
	</c:forEach>
	
</body>
</html>