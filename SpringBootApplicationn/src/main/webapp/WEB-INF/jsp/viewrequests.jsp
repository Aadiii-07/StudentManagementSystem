<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<title>Half Day Requests</title>

<style>
body {
	font-family: Arial;
	background: #eef2f7;
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
	background: #1877f2;
	color: white;
	padding: 12px;
}

td {
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
}

.btn {
	padding: 8px 12px;
	text-decoration: none;
	color: white;
	border-radius: 5px;
}

.approve {
	background: green;
}

.reject {
	background: red;
}
</style>

</head>

<body>

	<jsp:include page="sidebar.jsp" />

	<div class="container">

		<h2>Half Day Requests</h2>

		<table>

			<tr>
				<th>ID</th>
				<th>Student ID</th>
				<th>Reason</th>
				<th>Date</th>
				<th>Status</th>
				<th>Action</th>
			</tr>

			<c:forEach items="${requests}" var="r">

				<tr>

					<td>${r.requestId}</td>
					<td>${r.studentId}</td>
					<td>${r.reason}</td>
					<td>${r.requestDate}</td>
					<td>${r.approvalStatus}</td>

					<td><a class="btn approve"
						href="/approveRequest?requestId=${r.requestId}"> Approve </a> <a
						class="btn reject" href="/rejectRequest?requestId=${r.requestId}">
							Reject </a></td>

				</tr>

			</c:forEach>

		</table>

	</div>

</body>
</html>