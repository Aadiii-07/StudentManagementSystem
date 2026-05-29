<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Update Student</title>

<style>
body {
    font-family: Arial;
    background: #eef2f7;
}
.container {
    width: 400px;
    margin-top: 80px;
    margin-left: 320px;
    background: white;
    padding: 25px;
}

.box {
    width: 400px;
    margin: 80px auto;
    padding: 25px;
    background: white;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;
    color: #333;
}

input[type=text] {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}

input[type=submit] {
    width: 100%;
    padding: 10px;
    background: #28a745;
    color: white;
    border: none;
    cursor: pointer;
}

input[type=submit]:hover {
    background: #218838;
}
</style>

</head>

<body>

<jsp:include page="sidebar.jsp"/>

<div class="box">

<h2>Get Student for Update</h2>

<form method="post" action="editform">

    <label>Student ID</label>
    <input type="text" name="sid" placeholder="Enter Student ID" required>

    <input type="submit" value="Search Student">

</form>

</div>

</body>
</html>