<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table {
	font-family: cursive;
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
<body >

${user}
	<img src="">
	<h2 style="color: brown; font-size: 34px">User Info:</h2>
	<h3>click on the book name to return:</h3>
	<table>
		<tr>
			<th>User name</th>
			<th>User Id</th>
			<th>Book</th>
			<th>Borrowed Date</th>
			<th>Due Date</th>
			<th>Returned Date</th>
		</tr>
		<c:forEach items="${history}" var="s">
			<tr>
				<td>${s.username}</td>
				<td>${s.userid}</td>
				<td><a href="/sintecone/returnbook?BId=${s.bId}&userId=${s.userid}&username=${s.username}">${s.book}</a></td>
				<td>${s.borroweddate}</td>
				<td>${s.duedate}</td>
				<td>${s.returneddate}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>