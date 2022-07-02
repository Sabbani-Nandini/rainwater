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
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching</title>
<link rel="stylesheet" href="css styles.css">

<script type="text/javascript">
function alert(){
	alert("Tank is Deleted");
}
</script>

  <style>
body, html {
  height: 100%;
  margin: 0;
}

* {
  box-sizing: border-box;
}
th, td {
  border-bottom: 1px solid white;
  border-right: 1px solid white;
}
.bg-image {
  background-image: url("")");
  filter: blur(4px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.bg-text {
  opacity: 0.9;
  color: white;
  font-weight: bold;
  border: 0px solid #f1f1f1;
  position: absolute;
  top:50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 55%;
  height:70%;
  padding: 50px;
  text-align: center;
}
  </style>
</head>
<body>
<header>
  <div class="gradient">
    <div class="container">
      <h2 id="logo"><a href="Home.jsp"> parjanya </a></h2>	
      <nav>
        <a href="Home.jsp" class="menu_link active"> Welcome </a>
        <a href="Home.jsp" class="menu_link"> About </a>
        <a href="User_Login.jsp" class="menu_link">User Login</a>
        <a href="Admin_Login.jsp" class="menu_link">Employee Login </a>
        <a href="Home.jsp" class="menu_link"> Contact </a>
      </nav>
    </div>
  </div>
</header>
<div class="bg-text">
<form method="post" action="tanksget.jsp">
<h1 style="font-size:30px">SEARCH BY PLANT ID OR PLANT NAME</h1>

<br>
<br>

<input type="text" name="search" placeholder="Plant ID Or Plant Name"><br>
<br>


<button type="submit" name="save" class="btn btn-primary">Search</button>

</form>

<%
String e="";
e=request.getParameter("search");
Searching s=new Searching();
if(e!=null){
List<Plant> list=s.search(e);
%>

	<table style="border-style: inset;border-width: 7px;border-color: white;" align="center" cellpadding="10%" bgcolor=#002a77 cellspacing="20%" width="50%",height="50%">
		        <tr style="background-color: #48b4e0">
		    
		           <th>TANK ID</th>
		           <th>CAPACITY</th>
		           <th>AREA</th>
		           <th>PLANT ID</th>
		           <th>WATER LEVEL</th>
		           <th>IMPURITY</th>
		           <th>PLANT NAME</th>
		           <th>DELETE</th>
		        </tr> 
	<%
for(Plant i:list){
	%><form action="deleteTank.jsp" onsubmit="return alert()">
	          <tr>
	<td><%=i.tankID %></td>
	<td><%=i.capacity%></td>
	<td><%=i.area %></td>
	<td><%=i.plantID %></td>
	<td><%=i.Water_Level %></td>
	<td><%=i.impurity%></td>
	<td><%=i.plantName %></td>
	<td colspan=7><button type="submit" class="delete">Delete</button></td>
	</tr>
	</form>
	<%
}%></table>
		      <br>
		      <br>
		      <br>
		      
                    <td style="text-align:center;color: white;"><a href="addTank.jsp"><button>Add New Tank</button></a></td>
		      </div>
		      <%
}
%>
</table>
</body>
</html>