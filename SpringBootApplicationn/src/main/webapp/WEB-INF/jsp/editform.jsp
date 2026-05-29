<head>
<style>
.container {
    width: 400px;
    margin: 80px auto;
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
}
input {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}
button {
    width: 100%;
    padding: 10px;
    background: orange;
    color: white;
    border: none;
}
button:hover {
    background: darkorange;
}
</style>
</head>

<body>

<jsp:include page="sidebar.jsp"/>

<div class="container">

<h2>Edit Student</h2>

<form method="post" action="update">

<label>ID</label>
<p>${std.sid}</p>

<input type="hidden" name="sid" value="${std.sid}">

<label>Name</label>
<input type="text" name="sname" value="${std.sname}">

<label>Address</label>
<input type="text" name="saddr" value="${std.saddr}">

<button>UPDATE</button>

</form>

</div>

</body>