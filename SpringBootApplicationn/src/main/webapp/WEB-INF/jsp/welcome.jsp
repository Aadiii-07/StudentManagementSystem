<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<head>
<style>
body {
    margin: 0;
    font-family: Arial;
    background: #f4f6f9;
}

.header {
    background: linear-gradient(90deg, #1e3c72, #2a5298);
    color: white;
    padding: 20px;
    text-align: center;
    font-size: 28px;
    font-weight: bold;
}

.nav {
    display: flex;
    justify-content: center;
    margin-top: 40px;
    gap: 20px;
}

.nav a {
    text-decoration: none;
    padding: 15px 25px;
    background: white;
    border-radius: 8px;
    color: #1e3c72;
    font-weight: bold;
    box-shadow: 0px 3px 10px rgba(0,0,0,0.1);
    transition: 0.3s;
}

.nav a:hover {
    background: #1e3c72;
    color: white;
    transform: scale(1.05);
}
</style>
</head>

<body>

<div class="header">
    Student Management System
</div>

<div class="nav">
    <a href="addform">ADD Student</a>
    <a href="searchform">SEARCH Student</a>
    <a href="updateform">UPDATE Student</a>
    <a href="deleteform">DELETE Student</a>
</div>

</body>
</html>