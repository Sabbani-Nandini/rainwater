<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
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
	String tankID=request.getParameter("tankID");
	String capacity=request.getParameter("capacity");
	String area=request.getParameter("area");
	String plantID=request.getParameter("plantID");
	String Water_Level=request.getParameter("Water_Level");
	String impurity=request.getParameter("impurity");
	String plantName=request.getParameter("plantName");
	
	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();
	
	String query="insert into tank(tankID,capacity,area,plantID,Water_Level,impurity,plantName) values (?,?,?,?,?,?,?)";    
	PreparedStatement pstmt=conn.prepareStatement(query);
	
	pstmt.setString(1, tankID);    
	pstmt.setString(2, capacity);    
	pstmt.setString(3,area);    
	pstmt.setString(4, plantID); 
	pstmt.setString(5, Water_Level);    
	pstmt.setString(6, impurity);    
	pstmt.setString(7,plantName);
    int x=pstmt.executeUpdate(); 
    
    if(x==1){    
    	response.sendRedirect("tanksget.jsp");    
    	}    
    }

catch(Exception ex){
%><h2>
<% out.println("tankID already exists");%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>