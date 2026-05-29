<style>

.sidebar{
    width:250px;
    height:calc(100vh - 70px);
    background:#1e293b;
    position:fixed;
    left:0;
    top:70px;
    overflow-y:auto;
}

.sidebar h2{
    color:white;
    text-align:center;
    padding:20px 0;
}

.sidebar a{
    display:block;
    color:white;
    text-decoration:none;
    padding:15px 20px;
}

.sidebar a:hover{
    background:#2563eb;
}

.menu-title{
    color:#60a5fa;
    padding:15px 20px 5px;
    font-weight:bold;
}

</style>

<div class="sidebar">


<h2>Admin Panel</h2>

<div class="menu-title">Student Management</div>

<a href="/addform">Add Student</a>
<a href="/viewstudents">View Students</a>
<a href="/searchform">Search Student</a>
<a href="/updateform">Update Student</a>
<a href="/deleteform">Delete Student</a>


<div class="menu-title">Attendance</div>

<a href="/attendance">Mark Attendance</a>
<a href="/viewrequests">
    Half Day Requests
</a>

<a href="/viewattendance">View Attendance</a>



<div class="menu-title">Others</div>

<a href="/audit">Audit Logs</a>

<a href="/">Logout</a>


</div>
