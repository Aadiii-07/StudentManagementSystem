<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #42b72a, #2e9d18);
}

.container {
    width: 400px;
    margin-top: 80px;
    margin-left: 320px;
    background: white;
    padding: 25px;
}

h2 {
	text-align: center;
	color: #42b72a;
	margin-bottom: 25px;
}

input {
	width: 100%;
	padding: 14px;
	margin-bottom: 15px;
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
	font-size: 16px;
	font-weight: bold;
	border-radius: 8px;
	cursor: pointer;
}

button:hover {
	background: #2e9d18;
}

.error {
	text-align: center;
	color: red;
	margin-bottom: 15px;
}

.signup-link {
	text-align: center;
	margin-top: 20px;
}

.signup-link a {
	color: #42b72a;
	text-decoration: none;
	font-weight: bold;
}
</style>

</head>

<body>

	<div class="container">

		
		<h2>Admin Login</h2>

		<div class="error">${message}</div>

		<form action="adminlogin" method="post">

			<input type="text" name="username"
				placeholder="Email or Mobile Number" required> <input
				type="password" name="password" placeholder="Password" required>

			<button type="submit">Login</button>

		</form>

		<div class="signup-link">

			Don't have an account? <a href="/adminsignup"> Signup </a>

		</div>
	

	</div>

</body>
</html>
