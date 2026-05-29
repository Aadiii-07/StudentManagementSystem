<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<html>
<head>

<title>Apply Half Day</title>

<style>
body {
	font-family: Arial;
	background: #eef2f7;
}

.container {
	width: 500px;
	margin: 50px auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
}

input, textarea {
	width: 100%;
	padding: 10px;
	margin-top: 10px;
}

button {
	width: 100%;
	padding: 12px;
	background: #1877f2;
	color: white;
	border: none;
	margin-top: 15px;
}
</style>

</head>

<body>

	<div class="container">

		<h2>Apply Half Day</h2>

		<form action="/applyhalfday" method="post">

			<label>Student ID</label> <input type="text" name="studentId"
				required> <label>Reason</label>

			<textarea name="reason" rows="5" required></textarea>

			<button type="submit">Submit Request</button>

		</form>

	</div>

</body>

</html>