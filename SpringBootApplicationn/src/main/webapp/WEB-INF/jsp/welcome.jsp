<html>
<head>

<title>Student Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:#eef2f7;
}

/* HEADER */

.header{
    width:100%;
    height:70px;
    background:linear-gradient(90deg,#1e3c72,#2a5298);
    color:white;
    display:flex;
    align-items:center;
    padding-left:30px;
    font-size:28px;
    font-weight:bold;
    box-shadow:0 2px 10px rgba(0,0,0,0.2);
}

/* MAIN LAYOUT */

.main{
    display:flex;
}

/* SIDEBAR */

.sidebar{
    width:300px;
    min-height:calc(100vh - 70px);
    background:#1e293b;
    padding-top:20px;
}

/* SIDEBAR HEADINGS */

.sidebar h3{
    color:#60a5fa;
    padding-left:20px;
    margin-top:25px;
    margin-bottom:10px;
    font-size:18px;
}

/* MENU LINKS */

.sidebar a{
    display:block;
    color:white;
    text-decoration:none;
    padding:15px 20px;
    margin:8px 10px;
    border-radius:8px;
    transition:.3s;
    font-size:17px;
}

.sidebar a:hover{
    background:#2563eb;
    transform:translateX(5px);
}

/* CONTENT */

.content{
    margin-left:250px;
    padding:40px;
    width:100%;
}

/* CARDS */

.cards{
    display:flex;
    gap:25px;
    flex-wrap:wrap;
}

.card{
    width:250px;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.card h2{
    color:#2563eb;
    margin-bottom:10px;
}

.card p{
    color:#555;
    font-size:18px;
}

/* WELCOME BOX */

.welcome-box{
    margin-top:30px;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.welcome-box h1{
    color:#1e3c72;
    margin-bottom:15px;
}

.welcome-box p{
    font-size:18px;
    color:#444;
    line-height:1.7;
}

</style>

</head>

<body>

<div class="header">
    Student Management System
</div>

<div class="main">

<jsp:include page="sidebar.jsp"/>

<div class="content">

    <div class="cards">

        <div class="card">
            <h2>Student</h2>
            <p>Management System</p>
        </div>

        <div class="card">
            <h2>Spring Boot</h2>
            <p>CRUD Operations</p>
        </div>

        <div class="card">
            <h2>MySQL</h2>
            <p>Database Connected</p>
        </div>

    </div>

    <div class="welcome-box">

        <h1>Welcome Admin</h1>

        <p>
            This is your Student Management Dashboard.
            You can manage students, attendance,
            courses, subjects, marks and audit logs
            from a single platform.
        </p>

    </div>

</div>

</div>

</body>
</html>
