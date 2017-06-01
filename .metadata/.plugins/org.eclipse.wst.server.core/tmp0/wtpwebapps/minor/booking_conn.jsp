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
String my_location = request.getParameter("my_location");
String destination = request.getParameter("dest");
String contact_no = request.getParameter("contact_no");
String user_name = request.getParameter("user_name");
String workforce = request.getParameter("wor_force");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/goods_service_db","root", "");
Statement  ps = con.createStatement(); 

int result = ps.executeUpdate("insert into vec_booking values('"+my_location+"','"+destination+"','"+workforce+"','"+contact_no+"','"+user_name+"')");
%>
	<script>
	alert("Booking Confirmed...");
	window.location="profile.jsp";
	</script>
	
<%	
	}
	catch (Exception e)
	{}
%>
</body>
</html>