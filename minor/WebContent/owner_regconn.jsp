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
try{
String Mob_no = request.getParameter("Mob");
String address = request.getParameter("address");
String email = request.getParameter("mail");
String veh_reg = request.getParameter("veh_reg");
String owner_name = request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/goods_service_db","root", "");
Statement  ps = con.createStatement(); 

int result = ps.executeUpdate("insert into owner_reg values('"+Mob_no+"','"+address+"','"+email+"','"+veh_reg+"','"+owner_name+"')");

if(result != 0)
{%>
	<script>
	alert("Registered Successful...");
	</script>
<% 
}
else
{
%>
	<script>
	window.location("owner_reg.jsp");
	alert("register Failed");
	</script>
<%} %>
<%	
	}
	catch (Exception e)
	{}
%>
</body>
</html>