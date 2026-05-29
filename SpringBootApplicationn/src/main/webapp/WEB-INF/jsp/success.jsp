<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<head>
<style>
body {
    font-family: Arial;
    background: #f4f6f9;
}

.box {
    width: 450px;
    margin: 120px auto;
    padding: 30px;
    background: #d4edda;
    color: #155724;
    text-align: center;
    border-radius: 10px;
    font-size: 22px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
}
</style>
</head>

<body>

<jsp:include page="sidebar.jsp"/>

<div class="box">
    ${operation} SUCCESS 
</div>

</body>
</html>