<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: brown; font-family: cursive; text-align: center">Welcome
		to My Library!</h1>
	<style>
body {
	background-image: url(12.jpg);
	height: 100vh;
	background-size: cover;
	background-position: center;
}

.cam {
	color: blue;
	position: absolute;
	top: 45px;
	right: 45px;
}

.login-page {
	position: absolute;
	width: 360px;
	padding: 3% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: rgba(72, 110, 68, 0.8);
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 1;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 16px;
	cursor: pointer;
}

.form button : hover, .form button : active {
	background: #43A047;
}

.form .message {
	margin: 15px 0 0;
	color: blue;
	font-size: 16px;
	font-family:
}

.form .message a {
	color: red;
	text-decoration: none;
}

.form .register-form {
	display: none;
}
</style>
<body>
	<div class="cam">
		<a href="admin.html"> <img src="1.jpg" alt="Admin Login"
			style="width: 90px; height: 90px; border: 0;">
		</a>
	</div>
	<div class="login-page">
		<div class="form">

			<form class="register-form" method="post" action="adduser">
				<h1 style="color: lightgrey; font-family: cursive">#SIGNUP</h1>
				<input type="text" placeholder="Username" id="usr" name="username">
				<input type="password" placeholder="Password" id="pwd"
					name="password" /> <input type="password"
					placeholder="Confirm Password" id="cnfrmpwd" /> <input type="text"
					placeholder="gender" id="gender" name="gender" /> <input
					type="text" placeholder="DOB" id="dob" name="dob" /> <input
					type="text" placeholder="Country" id="country" name="country" />
				<button onclick="verification()">Sign up</button>

				<p class="message">
					Already Registered? <a href="#"><u>Login</u></a>
				</p>
			</form>

			<form class="Login-form" method="post" action="login">
				<h1 style="color: lightgrey; font-family: cursive">#USER LOGIN</h1>
				<input type="text" placeholder="Username" id="user" name="vusername" />
				<input type="password" placeholder="Password" id="pswd"
					name="vpassword" />
				<button onclick="Lvalidate()">Log in</button>
				<p class="message">
					Not Registered Yet? <a href="#"> <u>Register</u>
					</a>
				</p>
			</form>
		</div>
	</div>

	<script>
		function verification() {
			Rvalidate();
			Pvalidate();
		}

		function Rvalidate() {
			var usrnm = document.getElementById("usr").value;
			var pass = document.getElementById("pwd").value;
			var confirmpass = document.getElementById("cnfrmpwd").value;
			var gender = document.getElementById("gender").value;
			var dob = document.getElementById("dob").value;
			var country = document.getElementById("country").value;
			if (usrnm == "" || pass == "" || confirmpass == "" || gender == ""
					|| dob == "" || country == "") {
				alert("All fields are mandatory!");
				return false;
			}
			return true;
		}

		function Pvalidate() {
			var usrnm = document.getElementById("usr").value;
			var pass = document.getElementById("pwd").value;
			var confirmpass = document.getElementById("cnfrmpwd").value;
			var gender = document.getElementById("gender").value;
			var dob = document.getElementById("dob").value;
			var country = document.getElementById("country").value;
			if (usrnm != "" && pass != "" && confirmpass != "" && gender != ""
					&& dob != "" && country != "") {
				if (pass != confirmpass) {
					alert("Passwords do not match.");
					return false;
				}
			}
			return true;
		}

		function Lvalidate() {
			var username1 = document.getElementById('user').value;
			var password1 = document.getElementById("pswd").value;
			if (username1 == "" && password1 == "") {
				alert("please enter a valid Username and Password");
				return false;
			} else if (username1 == "") {
				alert("Username field cannot be empty!");
				return false;
			} else if (password1 == "") {
				alert("Password field cannot be empty!");
				return false;
			}
			return true;
		}
	</script>

	<script
		src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'>
		
	</script>

	<script>
		$('.message a').click(function() {
			$('form').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
	</script>
</body>

</body>
</html>