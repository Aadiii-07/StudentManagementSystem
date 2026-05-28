<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<head>
<style>
body {font-family: Arial; background:#eef2f7;}
.container {
    width: 400px;
    margin: 80px auto;
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
}

input[type=text] {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}

button {
    width: 100%;
    padding: 10px;
    background: #28a745;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background: #218838;
}
</style>
</head>

<body>

<jsp:include page="welcome.jsp"/>

<div class="container">

<h2>Add Student</h2>

<form method="post" action="add">

<label>Student ID</label>
<input type="text" name="sid">

<label>Name</label>
<input type="text" name="sname">

<label>Address</label>
<input type="text" name="saddr">

<button type="submit">ADD</button>

</form>

</div>

</body>
</html>