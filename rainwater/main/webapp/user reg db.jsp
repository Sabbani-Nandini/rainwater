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
</head>
<body>
<%!String str; %>

<%

try{
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();
	
	String query="insert into register(fname,lname,email,password) values (?,?,?,?)";    
	PreparedStatement pstmt=conn.prepareStatement(query);
	
	pstmt.setString(1, fname);    
	pstmt.setString(2, lname);    
	pstmt.setString(3,email);    
	pstmt.setString(4, password); 
	
    int x=pstmt.executeUpdate(); 
    
    if(x==1){    
    	response.sendRedirect("User_Login.jsp");    
    	}    
    }

catch(Exception ex){
%><h2>
<% out.println(" email or contact number already exists");%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>