<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<html>

<head>

<title>Student Dashboard</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
    margin:0;
}

.header{
    background:#1877f2;
    padding:25px;
    color:white;
    font-size:35px;
}

.container{
    padding:30px;
}

.card{
    background:white;
    padding:25px;
    margin-bottom:20px;
    border-radius:10px;
    box-shadow:0 5px 10px rgba(0,0,0,.1);
    font-size:22px;
}

.action-btn{

    display:inline-block;

    background:#1877f2;

    color:white;

    text-decoration:none;

    padding:12px 20px;

    border-radius:8px;

    margin-right:10px;

    font-size:18px;
}

.action-btn:hover{
    background:#0d65d9;
}

</style>

</head>

<body>

<div class="header">
    Welcome ${student.sname}
</div>

<div class="container">


<div class="card">
    Student ID : ${student.sid}
</div>

<div class="card">
    Email : ${student.email}
</div>

<div class="card">
    Mobile : ${student.mobile}
</div>

<div class="card">

    <h2>Student Services</h2>

    <br>

    <a class="action-btn"
       href="/studentattendance">
       My Attendance
    </a>

    <a class="action-btn"
       href="/halfdayform">
       Apply Half Day
    </a>

    <a class="action-btn"
       href="/">
       Logout
    </a>

</div>


</div>

</body>

</html>
