<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import="java.sql.ResultSet" %>
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
  background-image: url("assets/img/imgtry/p2.jpg");
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
  width: 95%;
  height:40%;
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
	
	String area=request.getParameter("area");
	
	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();

	 st = conn.createStatement();
	ResultSet rs=st.executeQuery("select distinct plantID,plantName from tank where area='"+area+"'"); 
	%>
	 <div class="bg-text">
	<table style="border-style: inset;border-width: 7px;border-color: white;" align="center" cellpadding="10%" bgcolor=#002a77 cellspacing="20%" width="50%",height="50%">
    <thead>
        <tr style="background-color: #48b4e0">
           <th>PLANT ID</th>
           <th>PLANT NAME</th>
        </tr>
    </thead>
    </div>
    <tbody>
      <% while(rs.next())
      {
          %>
          <tr>
              <td><%=rs.getString("plantID") %></td>
              <td><%=rs.getString("plantName") %></td>
              </tr>
          <%}%>
         </tbody>
      </table><br>
  <%}

catch(Exception ex){
%><h2>
<% out.println(ex);%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>