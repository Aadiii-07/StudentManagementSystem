<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<title>Student Login</title>

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
	background: linear-gradient(135deg, #1877f2, #42a5f5);
}

.container {
	width: 450px;
	background: white;
	padding: 35px;
	border-radius: 20px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, .25);
}

h2 {
	text-align: center;
	color: #1877f2;
	margin-bottom: 25px;
}

input {
	width: 100%;
	padding: 14px;
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 8px;
}

button {
	width: 100%;
	padding: 14px;
	border: none;
	background: #1877f2;
	color: white;
	font-size: 16px;
	font-weight: bold;
	border-radius: 8px;
	cursor: pointer;
}

button:hover {
	background: #0d65d9;
}

.error {
	color: red;
	text-align: center;
	margin-bottom: 10px;
}
</style>

</head>

<body>

	<div class="container">

		<h2>Student Login</h2>

		<div class="error">${message}</div>

		<form action="studentlogin" method="post">

			<input type="text" name="username" placeholder="Email or Mobile">

			<input type="password" name="password" placeholder="Password">

			<button type="submit">Login</button>

		</form>

	</div>

</body>

</html>