<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<title>View Students</title>

<style>
body {
	font-family: Arial;
	background: #eef2f7;
}

.container {
	width: 95%;
	margin: 30px auto;
}

h2 {
	text-align: center;
	color: #1877f2;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	background: white;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
}

th {
	background: #1877f2;
	color: white;
	padding: 12px;
}

td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background: #f5f5f5;
}
</style>

</head>

<body>

	<div class="container">

		<h2>All Registered Students</h2>

		<table>

			<tr>

				<th>ID</th>
				<th>Name</th>
				<th>Address</th>
				<th>Email</th>
				<th>Mobile</th>

			</tr>

			<c:forEach items="${students}" var="s">

				<tr>

					<td>${s.sid}</td>
					<td>${s.sname}</td>
					<td>${s.saddr}</td>
					<td>${s.email}</td>
					<td>${s.mobile}</td>

				</tr>

			</c:forEach>

		</table>

	</div>

</body>

</html>