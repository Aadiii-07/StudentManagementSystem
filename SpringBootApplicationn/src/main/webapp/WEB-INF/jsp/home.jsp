<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management Portal</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    height:100vh;
    background:linear-gradient(135deg,#1877f2,#42a5f5);
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:1000px;
    height:600px;
    background:white;
    border-radius:20px;
    overflow:hidden;
    display:flex;
    box-shadow:0px 10px 30px rgba(0,0,0,0.25);
}

.left{
    width:50%;
    background:#f5f8ff;
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:60px;
}

.left h1{
    color:#1877f2;
    font-size:55px;
    margin-bottom:20px;
}

.left p{
    font-size:22px;
    color:#555;
    line-height:1.6;
}

.right{
    width:50%;
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:40px;
}

.card{
    background:white;
    padding:25px;
    margin-bottom:25px;
    border-radius:15px;
    box-shadow:0px 5px 15px rgba(0,0,0,0.1);
}

.card h2{
    text-align:center;
    margin-bottom:20px;
    color:#1877f2;
}

.btn{
    display:block;
    text-decoration:none;
    text-align:center;
    padding:14px;
    margin-top:12px;
    border-radius:8px;
    color:white;
    font-weight:bold;
    transition:0.3s;
}

.student{
    background:#1877f2;
}

.student:hover{
    background:#0d65d9;
}

.admin{
    background:#42b72a;
}

.admin:hover{
    background:#2e9d18;
}

</style>

</head>

<body>

<div class="container">


<div class="left">

    <h1>Student Portal</h1>

    <p>
        Manage Students, Attendance,
        Results, Subjects and Courses
        from a single platform.
    </p>

</div>

<div class="right">

    <div class="card">

        <h2>Student Section</h2>

        <a href="/studentlogin" class="btn student">
            Student Login
        </a>

        <a href="/studentsignup" class="btn student">
            Student Signup
        </a>

    </div>

    <div class="card">

        <h2>Admin Section</h2>

        <a href="/adminlogin" class="btn admin">
            Admin Login
        </a>

        <a href="/adminsignup" class="btn admin">
            Admin Signup
        </a>

    </div>

</div>


</div>

</body>
</html>
