<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<head>
<style>
body {font-family: Arial; background:#f4f6f9;}

.box {
    width: 400px;
    margin: 100px auto;
    padding: 20px;
    background: white;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
}

table {
    width: 100%;
}

td {
    padding: 10px;
}
</style>
</head>

<body>

<jsp:include page="welcome.jsp"/>

<div class="box">

<h2>Student Details</h2>

<table border="1">

<tr>
<td>ID</td>
<td>${std.sid}</td>
</tr>

<tr>
<td>Name</td>
<td>${std.sname}</td>
</tr>

<tr>
<td>Address</td>
<td>${std.saddr}</td>
</tr>

</table>

</div>

</body>
</html>