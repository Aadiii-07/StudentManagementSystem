<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Signup</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #42b72a, #2e9d18);
}

.container {
	width: 500px;
	background: white;
	padding: 35px;
	border-radius: 20px;
	box-shadow: 0px 15px 35px rgba(0, 0, 0, 0.25);
}

.logo {
	text-align: center;
	margin-bottom: 25px;
}

.logo h1 {
	color: #42b72a;
}

.logo p {
	color: #666;
	margin-top: 5px;
}

.form-group {
	margin-bottom: 15px;
}

input {
	width: 100%;
	padding: 14px;
	border: 1px solid #ddd;
	border-radius: 8px;
}

input:focus {
	outline: none;
	border-color: #42b72a;
}

button {
	width: 100%;
	padding: 14px;
	border: none;
	background: #42b72a;
	color: white;
	border-radius: 8px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
}

button:hover {
	background: #2e9d18;
}

.login-link {
	text-align: center;
	margin-top: 20px;
}

.login-link a {
	color: #42b72a;
	text-decoration: none;
	font-weight: bold;
}
</style>

</head>

<body>

	<div class="container">

		
		<div class="logo">

			<h1>Admin Signup</h1>

			<p>Create Admin Account</p>

		</div>

		<form action="adminsignup" method="post">

			<div class="form-group">
				<input type="text" name="adminName" placeholder="Admin Name"
					required>
			</div>

			<div class="form-group">
				<input type="email" name="email" placeholder="Email Address"
					required>
			</div>

			<div class="form-group">
				<input type="text" name="mobile" placeholder="Mobile Number"
					required>
			</div>

			<div class="form-group">
				<input type="password" name="password" placeholder="Password"
					required>
			</div>

			<button type="submit">Create Admin Account</button>

		</form>

		<div class="login-link">

			Already have an account? <a href="/adminlogin"> Login </a>

		</div>
		

	</div>

</body>
</html>
