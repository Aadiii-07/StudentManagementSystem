<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Audit Log</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f9;
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
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background: #007bff;
    color: white;
    padding: 10px;
}

td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background: #f1f1f1;
}
</style>

</head>

<body>

<div class="container">

<h2>Student Audit Log</h2>

<table>
<tr>
    <th>ID</th>
    <th>Student ID</th>
    <th>Action</th>
    <th>Time</th>
</tr>

<c:forEach var="log" items="${logs}">
<tr>
    <td>${log.id}</td>
    <td>${log.sid}</td>
    <td>${log.action}</td>
    <td>${log.action_time}</td>
</tr>
</c:forEach>

</table>

</div>

</body>
</html>