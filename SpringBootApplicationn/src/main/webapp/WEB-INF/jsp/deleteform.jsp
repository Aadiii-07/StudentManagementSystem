<style>
.container {
    width: 400px;
    margin-top: 80px;
    margin-left: 320px;
    background: white;
    padding: 25px;
}
input, button {padding:10px;width:100%;margin-top:10px;}
button {background:red;color:white;border:none;}
button:hover {background:darkred;}
</style>

<body>

<jsp:include page="sidebar.jsp"/>

<div class="container">

<h2>Delete Student</h2>

<form method="post" action="delete">
<input type="text" name="sid" placeholder="Enter ID">
<button>DELETE</button>
</form>

</div>

</body>