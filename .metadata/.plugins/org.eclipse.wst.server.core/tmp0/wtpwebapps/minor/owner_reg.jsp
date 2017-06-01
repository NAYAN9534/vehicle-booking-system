<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="owner_regconn.jsp" method="post">
<h1 align = "center">User Login</h1>
<br>
   <div align = "center">
    <b>mobile</b>
    <input type="text" placeholder="mob" name="Mob"/ >
	<br>
    <b>name</b>
    <input type="text" placeholder="name" name="name"/>
	<br>
      <b>address</b>
    <input type="text" placeholder="address" name="address"/>
    <br>
    <b>Email</b>
    <input type="mail" placeholder="example@xyzmail.com" name="mail"/ >
    <br>
    <b>Vehicle Registration No.</b>
    <input type="text" placeholder="Vehicle No." name="veh_reg"/ >
    <br>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="submit"/>
	</div>
</form>
</body>
</html>