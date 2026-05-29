<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Signup</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#1877f2,#42a5f5);
}

.container{
    width:550px;
    background:white;
    padding:35px;
    border-radius:20px;
    box-shadow:0px 15px 35px rgba(0,0,0,0.25);
}

.logo{
    text-align:center;
    margin-bottom:25px;
}

.logo h1{
    color:#1877f2;
    font-size:36px;
}

.logo p{
    color:#666;
    margin-top:5px;
}

.form-group{
    margin-bottom:15px;
}

input,
select{
    width:100%;
    padding:14px;
    border:1px solid #ddd;
    border-radius:8px;
    font-size:15px;
}

input:focus,
select:focus{
    outline:none;
    border-color:#1877f2;
}

button{
    width:100%;
    padding:14px;
    background:#1877f2;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background:#0d65d9;
}

.login-link{
    text-align:center;
    margin-top:20px;
}

.login-link a{
    text-decoration:none;
    color:#1877f2;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="container">

<div class="logo">

    <h1>Student Signup</h1>

    <p>Create your account</p>

</div>

<form action="studentsignup" method="post">

    <div class="form-group">
        <input type="text" name="sid" placeholder="Student ID" required>
    </div>

    <div class="form-group">
        <input type="text" name="sname" placeholder="Full Name" required>
    </div>

    <div class="form-group">
        <input type="text" name="saddr" placeholder="Address" required>
    </div>

    <div class="form-group">
        <input type="email" name="email" placeholder="Email Address" required>
    </div>

    <div class="form-group">
        <input type="text" name="mobile" placeholder="Mobile Number" required>
    </div>

    <div class="form-group">
        <input type="password" name="password" placeholder="Password" required>
    </div>

    <div class="form-group">
        <select name="courseId" required>

            <option value="">Select Course</option>

            <option value="1">BSc IT</option>
            <option value="2">BSc CS</option>
            <option value="3">BCom</option>
            <option value="4">BMS</option>

        </select>
    </div>

    <button type="submit">
        Create Account
    </button>

</form>

<div class="login-link">

    Already have an account?

    <a href="/studentlogin">
        Login
    </a>

</div>


</div>

</body>
</html>
