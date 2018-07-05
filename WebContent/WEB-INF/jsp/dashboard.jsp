<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>MyLibrary</title>
<style>
body {
  width: 100%;
  height: 2000px;
 }

.Dash {
background-color:;
position: fixed;
  top: 0;
  left: 0;
  border: 12px solid #000;
  width: 100%;
  height: 100%;
  box-sizing: border-box;
border-style: double;
 border: 2px solid black;
    border-radius: 5px;
}
.ver{
 width: 100%;
  height: 6.4%;
}

.Row {
font-color:red;
font-family:cursive;
background-color:#C2DFFC;
  width: 100%;
  height: 6%;
  box-sizing: border-box;
 border: 2px solid black;
}
.mid{
background-color:#EBEDEF;
position: fixed;
  top: 130px;
  left: 267px;
right:50px
  width: 79.9%;
  height: 77.7%;
  box-sizing: border-box;
 
   }
.if{
background-color:#1B2631;
position: fixed;
  top: 130px;
  left: 0px;
  width: 20%;
  height: 85%;
  box-sizing: border-box;
 border: 2px solid black;
}

.head{
font-family:comic sans;
font-color:#FF6961;
 background-color:#F5CBA7;
  width: 100%;
  height: 16%;
  box-sizing: border-box;
 border: 2px solid black;
    border-radius: 5px;

}
.out{
   cursor:pointer;
   color:red;
   position:absolute;
   top:78px;
   right:10px;
  }
 .cam{
   color:blue;
   position:absolute;
   top:1px;
   right:4px;
  }
</style>
</head>
<body>
<div class="Dash">
<div class="head">
<h1 style="font-size:20; color: #3F030C">MyLibrary</h1>
<div class="out">
<form action="logout" method="post">
<button> LOGOUT</button>
</form>
</div>
</div>
<div class="Row">
<marquee style="color:#3F0314" behavior="alternate">
KNOWLEDGE   IS   POWER.
</marquee>
</div>

<div class="ver">
</div>
<div class="mid">
<center>
<iframe name="iframe2" src="https://lovestorycafe.files.wordpress.com/2015/03/coffee_in_library_drink_food_books_hd-wallpaper-1604966.jpg?w=1140&h=610&crop=1" height="480"  width="1070" frameborder="100"> 
 </iframe>
 </center>
</div>

<div class="cam">
 <img src="https://vignette.wikia.nocookie.net/fan-fiction-library/images/1/15/Admin.png/revision/latest?cb=20140917130743"  style="width:80px;height:80px;border:0;">
</div>

<div class="if">
<iframe name="iframe1"  src="if.html" height="540" width="262.5" frameborder="50"></iframe>
</div>
</div>
</body>
</html>
