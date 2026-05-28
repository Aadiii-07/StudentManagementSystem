<head>
<style>
.container {width:400px;margin:80px auto;background:white;padding:25px;
box-shadow:0 5px 15px rgba(0,0,0,0.1);border-radius:10px;}
input{width:100%;padding:10px;margin:10px 0;}
button{width:100%;padding:10px;background:#007bff;color:white;border:none;}
button:hover{background:#0056b3;}
</style>
</head>

<body>

<jsp:include page="welcome.jsp"/>

<div class="container">
<h2>Search Student</h2>

<form method="post" action="search">
<input type="text" name="sid" placeholder="Enter ID">
<button>SEARCH</button>
</form>

</div>
</body>