<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.*"%>
<% 
String pass = request.getParameter("pass");
String Password = request.getParameter("new_pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/goods_service_db","root", "");
PreparedStatement p = con.prepareStatement("update login set Password=? where Password=?");
p.setString(1,Password);
p.setString(2,pass);
int result = p.executeUpdate();
if(result!=0)
{%>
<script>
	window.location="profile.jsp";
	alert("Your Password has changed successfully");
	</script>
<%}
else
{%>
<script>
	window.location="change_pass.jsp";
	alert("Password not changed");
	</script>
<%}

%>
</body>
</html>