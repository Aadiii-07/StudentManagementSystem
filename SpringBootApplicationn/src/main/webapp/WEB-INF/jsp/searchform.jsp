<head>
<style>
.container {
    width: 400px;
    margin-top: 80px;
    margin-left: 320px;
    background: white;
    padding: 25px;
}
input{width:100%;padding:10px;margin:10px 0;}
button{width:100%;padding:10px;background:#007bff;color:white;border:none;}
button:hover{background:#0056b3;}
</style>
</head>

<body>

<jsp:include page="sidebar.jsp"/>

<div class="container">
<h2>Search Student</h2>

<form method="post" action="search">
<input type="text" name="sid" placeholder="Enter ID">
<button>SEARCH</button>
</form>

</div>
</body>