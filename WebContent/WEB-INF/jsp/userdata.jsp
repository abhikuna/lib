 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<style>

.first
{
width:100%;
height:25%;
box-sizing: border-box;
border: 2px solid black;
border-radius: 5px;
background-color:orange;
}
a
{
	font-family:cursive;
	font-size:25px;
	color:white;
}

.left{
width:20%;
height:66.5%;
box-sizing: border-box;
border: 2px solid black;
border-radius: 5px;
background-color:grey;
float: left;
}
footer {
    position:fixed;
    bottom:0;
	background-color:orange;
	width:100%;
	height:9.5%;
}


.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 16px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 1px 1px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}

.ddd{
	top:200px;
	left:240px;
	width:100%;
	height:66.5%;
	background-color:;
}
.out{
	position:absolute;
	top:100px;

	right:25px;
}
.pic
{
	position:absolute;
	top:65px;
	
	right:25px;
}
</style>
</head>

<c:forEach var="u" items="${user}">

<div class="first">
<h1>LIBRARY</h1>
<h3>

Welcome ${u.username}
</br>
UserId: ${u.userId}
</h3>
<div class="pic">
<img src="https://vignette.wikia.nocookie.net/fan-fiction-library/images/1/15/Admin.png/revision/latest?cb=20140917130743"  style="width:80px;height:80px;border:0;">
</div>
   <div class="out">
<a href="/sintecone/logout"><h6>LOGOUT</h6></a>
	</div>
</div>


<div class="left">
<a href="/sintecone/uhistroy?Id=${u.username}"  style="text-decoration:none" target="frame1">INFO</a></br></br></hr>

<a href="/sintecone/ubookinfo" target="frame1"	style="text-decoration: none">Books Info</a>
<br/>
<div class="dropdown">
  <button class="dropbtn">SEARCH BY</button>
  <div class="dropdown-content">
     
    <a href="uauthor.html" target="frame1">Author</a>
    <a href="searchcategory.html" target="frame1">Category</a>
  </div>
</div>

</div>

<div class="ddd">
<center>
<iframe name="frame1" src="https://lovestorycafe.files.wordpress.com/2015/03/coffee_in_library_drink_food_books_hd-wallpaper-1604966.jpg?w=1140&h=610&crop=1"  height="420px" width="1040px">
</iframe>
</center>
</div>

<footer>
<p>About Us<p>
<p>contact<p>
</footer>



</body>
</c:forEach>
</html>