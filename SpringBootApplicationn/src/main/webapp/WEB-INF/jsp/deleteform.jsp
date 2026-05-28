<style>
.container {
    width: 350px;
    margin: 100px auto;
    background: white;
    padding: 25px;
    border-radius: 10px;
    text-align: center;
}
input, button {padding:10px;width:100%;margin-top:10px;}
button {background:red;color:white;border:none;}
button:hover {background:darkred;}
</style>

<body>

<jsp:include page="welcome.jsp"/>

<div class="container">

<h2>Delete Student</h2>

<form method="post" action="delete">
<input type="text" name="sid" placeholder="Enter ID">
<button>DELETE</button>
</form>

</div>

</body>