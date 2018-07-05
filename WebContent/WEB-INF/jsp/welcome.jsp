<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<h1 style="color:; font-family: cursive; text-align: center"></h1>
<style>
body {
	background-image:
		url("http://library.mubs.ac.ug/mubslib/wp-content/uploads/2015/03/stonecenter2.jpg");
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
	margin-top: 100px;
	margin-left: 30px;
	background: rgba(52, 80, 98, 0.8);
	opacity: 1;
	max-width: 300px;
	padding: 1px;
	text-align: center;
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 1;
	background: #f2f2f2;
	width: 70%;
	border: 0;
	margin: 0 10 10px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 14px;
}

.form select {
	font-family: "Roboto", sans-serif;
	outline: 1;
	background: #f2f2f2;
	width: 70%;
	border: 0;
	margin: 0 0 8px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 35%;
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
	color: lightblue;
	font-size: 18px;
}

.form .message a {
	color: #FF6961;
	text-decoration: none;
}

.form .register-form {
	display: none;
}
</style>
<body>
	<div class="cam">
		<a href="admin.html"> <img
			src="http://tieedu.in/emf/feedback/admin/images//admin.jpg"
			alt="Admin Login" style="width: 90px; height: 90px; border: 0;">
		</a>
	</div>
	<div class="login-page">
		<div class="form">

			<form class="register-form"  onsubmit="return verification()" method="post" action="adduser">
				<h1 style="color: lightgrey; font-family: cursive">#SIGNUP</h1>
				<input type="text" placeholder="Username" id="rusr" name="username">
				<input type="password" placeholder="Password" id="rpswd"
					name="password" /> <input type="password"
					placeholder="Confirm Password" id="cnfrmpwd" /> <select
					name="gender">
					<option value="gender" selected disabled>Gender</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
					<option value="other">other</option>
				</select> <input type="text" placeholder="DOB(DD-MMM-YY)" id="dob" name="dob" />
				<input type="text" placeholder="Country" id="country" name="country" />
				<button onclick="verification()">Sign up</button>

				<p class="message">
					Already Registered? <a href="#">Login</a>
				</p>
			</form>

			<form class="Login-form" method="post" action="ulogin">
				<h1 style="color: lightgrey; font-family: cursive">#USER LOGIN</h1>
				<input type="text" placeholder="Username" id="luser" name="username" />
				<input type="password" placeholder="Password" id="lpswd"
					name="password" />
				<button onclick="Lvalidate()">Log in</button>
				<p class="message">
					Not Registered Yet? <a href="#"> Register
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
</script>

	<script>
    	function Rvalidate() {
	var usrnm = document.getElementById("rusr").value;
        var pass = document.getElementById("rpswd").value;
        var confirmpass = document.getElementById("cnfrmpwd").value;
	var gender = document.getElementsByName("gender").value;
	var dob = document.getElementById("dob").value;
	var country = document.getElementById("country").value;
	if(usrnm == "" || pass == "" || confirmpass == "" || gender == "" || dob == ""||country == "" ) {
	alert("All fields are mandatory!");
	return false;
	}
	
	}
</script>

	<script>
	function Pvalidate() {
	var usrnm = document.getElementById("rusr").value;
        var pass = document.getElementById("rpswd").value;
        var confirmpass = document.getElementById("cnfrmpwd").value;
	var gender = document.getElementsByName("gender").value;
	var dob = document.getElementById("dob").value;
	var country = document.getElementById("country").value;
	if(usrnm != "" && pass != "" && confirmpass != "" && gender != "" && dob != "" && country != "") {
	if(pass != confirmpass) {
            alert("Passwords do not match!");
            return false;
        }
	if(pass.length < 6 || pass.length > 10) {
	alert("Password should range between 6 to 10 characters!"); 
	return false;
	}
}
	
	return false;
	} 
</script>


	<script>
    function Lvalidate() {
    var Username = document.getElementById('luser').value;
    var password = document.getElementById("lpswd").value;
    if (Username == "" && password == "") {
        alert("please enter a valid Username and Password!");
        return false;
    }
else if(Username == "") {
	alert("Username field cannot be empty!");
	return false;
}
else if(password == "") {
	alert("Password field cannot be empty!");
	return false; 
}
}
</script>

	<script
		src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'>
</script>

	<script>
$('.message a').click(function() {
$('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>
</body>
</html>