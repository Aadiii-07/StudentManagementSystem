<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<html>
<head>

<title>Attendance</title>

<style>
body {
	background: #eef2f7;
	font-family: Arial;
}

.container {
	width: 500px;
	margin-left: 320px;
	margin-top: 60px;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

input, select {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
}

button {
	width: 100%;
	padding: 12px;
	background: #2563eb;
	color: white;
	border: none;
}
</style>

</head>

<body>

	<jsp:include page="sidebar.jsp" />

	<div class="container">

		<h2>Mark Attendance</h2>

		<form action="/markattendance" method="post">

			<input type="text" name="studentId" placeholder="Student ID" required>

			<input type="date" name="attendanceDate" required> <select
				name="status">

				<option value="Present">Present</option>

				<option value="Absent">Absent</option>

				<option value="Half Day">Half Day</option>

			</select> <input type="text" name="reason" placeholder="Reason (Optional)">

			<button type="submit">Mark Attendance</button>

		</form>

	</div>

</body>
</html>