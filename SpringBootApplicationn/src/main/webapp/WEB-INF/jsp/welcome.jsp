

<html>
<head>

<title>Student Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial;
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
    box-shadow:0px 2px 10px rgba(0,0,0,0.2);
}

/* MAIN LAYOUT */

.main{
    display:flex;
}

/* SIDEBAR */

.sidebar{
    width:250px;
    height:100vh;
    background:#1e293b;
    padding-top:30px;
}

/* MENU LINKS */

.sidebar a{
    display:block;
    color:white;
    text-decoration:none;
    padding:15px 25px;
    margin:10px;
    border-radius:8px;
    transition:0.3s;
    font-size:17px;
}

.sidebar a:hover{
    background:#2563eb;
    transform:translateX(5px);
}

/* CONTENT AREA */

.content{
    flex:1;
    padding:40px;
}

/* DASHBOARD CARDS */

.cards{
    display:flex;
    gap:25px;
    flex-wrap:wrap;
}

.card{
    width:220px;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0px 5px 15px rgba(0,0,0,0.1);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-5px);
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
    margin-top:40px;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0px 5px 15px rgba(0,0,0,0.1);
}

.welcome-box h1{
    color:#1e3c72;
    margin-bottom:15px;
}

.welcome-box p{
    font-size:18px;
    color:#444;
    line-height:1.6;
}

</style>

</head>

<body>

<!-- HEADER -->

<div class="header">
    Student Management System
</div>

<!-- MAIN SECTION -->

<div class="main">

    <!-- SIDEBAR -->

<div class="sidebar">

    <a href="/welcomepage">Dashboard</a>

    <a href="/addform">Add Student</a>

    <a href="/searchform">Search Student</a>

    <a href="/updateform">Update Student</a>

    <a href="/deleteform">Delete Student</a>

    <a href="/audit">Audit Logs</a>

</div>

    <!-- CONTENT -->

    <div class="content">

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

            <h1>Welcome Admin </h1>

            <p>
                This is your Student Management Dashboard.
                You can manage student records, search details,
                update information, delete records and monitor audit logs.
            </p>

        </div>

    </div>

</div>

</body>
</html>