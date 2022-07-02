<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="connection.GetConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css styles.css">
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
  background-image: url("");
  filter: blur(4px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.bg-text {
  opacity: 1;
  color: white;
  font-weight: bold;
  border: 0px solid #f1f1f1;
  position: absolute;
  top:50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 100%;
  height:86%;
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
<%!String str; %>
<%
try{
	String status=request.getParameter("status");
	Connection conn=GetConnection.Establish();
		if(conn!=null)
		{
			Statement stmt=conn.createStatement();
			String email="";
			ResultSet rs=stmt.executeQuery("select * from user ");
			%>
			<div class="bg-text">
			<table style="border-style: inset;border-width: 7px;border-color: white;"bgcolor=#002a77 align="center" cellpadding="10%" cellspacing="20%" width="50%",height="50%">
		        <tr style="background-color: #48b4e0">
		    
		           <th>FIRST NAME</th>
		           <th>LAST NAME</th>
		           <th>EMAIL</th>
		           <th>ADDRESS</th>
		           <th>DELETE</th>
		           
		        </tr>
			<% while(rs.next()){
	          %>
	          <form action="deleteUser.jsp">
	          <tr>
	              <td><%=rs.getString("fname") %>
	              
	              <td><%=rs.getString("lname") %>
	              <br></td>
	              <td><%=rs.getString("email") %>
	              <input type="hidden" name="email" value="<%=rs.getString("email") %>"><br></td>
	              <br>
	              <td><%=rs.getString("address") %></td>
	              
				  <td colspan=7><button type="submit" class="delete">Delete</button></td>
	              </tr>
	              </form> 
	              
	  <%}%>
		      </table>    
		      </div>
      <%}
	else
		out.print("Connection Not Established");
}
catch(SQLException e)
{
	out.print(e);
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>