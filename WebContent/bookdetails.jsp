<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String ss =request.getParameter("Id");
		System.out.println("my value" +" "+ ss); %>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<form action="bookdetails">

Enter the book details: 
<!-- 
<input  type="text" value="" name="bId">
<button type="submit"><i class="fa fa-search"></i></button>
 -->
${list.book}
${list.bId}
</form>
</body>
</html>