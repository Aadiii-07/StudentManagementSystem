<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>

<title>Attendance Records</title>

<style>
body {
	background: #eef2f7;
	font-family: Arial;
}

.container {
	margin-left: 280px;
	padding: 30px;
}

table {
	width: 100%;
	background: white;
	border-collapse: collapse;
}

th {
	background: #2563eb;
	color: white;
	padding: 12px;
}

td {
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
}
</style>

</head>

<body>

	<jsp:include page="sidebar.jsp" />

	<div class="container">

		<h2>Attendance Records</h2>

		<table>

			<tr>

				<th>ID</th>
				<th>Student ID</th>
				<th>Date</th>
				<th>Status</th>
				<th>Reason</th>

			</tr>

			<c:forEach items="${attendanceList}" var="a">

				<tr>

					<td>${a.attendanceId}</td>

					<td>${a.studentId}</td>

					<td>${a.attendanceDate}</td>

					<td>${a.status}</td>

					<td>${a.reason}</td>

				</tr>

			</c:forEach>

		</table>

	</div>

</body>
</html>