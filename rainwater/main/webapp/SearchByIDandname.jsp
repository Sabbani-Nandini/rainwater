<%@page import="connection.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.Class"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<title>Searching</title>
</head>
<body>
<h3>Search By PlantId Or Plant Name</h3>
<form method="post" action="SearchByIDandname.jsp">
<input type="text" name="search" placeholder="Please give Plant ID Or Plant Name"><br>
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
<%
String e="";
e=request.getParameter("search");
Searching s=new Searching();
if(e!=null){
List<Plant> list=s.search(e);
%>
<table border=2;>
	<tr>
	<th>Tank ID</th>
	<th>Capacity</th>
	<th>Area</th>
	<th>plant ID</th>
	<th>Water_Level</th>
	<th>Impurity</th>
	<th>plantName</th>
	
	</tr> 
	<%
for(Plant i:list){
	%>
	<tr>
	<td><%=i.tankID %></td>
	<td><%=i.capacity%></td>
	<td><%=i.area %></td>
	<td><%=i.plantID %></td>
	<td><%=i.Water_Level %></td>
	<td><%=i.impurity%></td>
	<td><%=i.plantName %></td>
	</tr>
	<%
}
}
%>
</table>
</body>
</html>