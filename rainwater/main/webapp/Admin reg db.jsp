<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
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
	String job=request.getParameter("job");
	String contact=request.getParameter("contact");
	String address=request.getParameter("address");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rainwater", "root", "Chikki@987");
	Statement st=conn.createStatement();
	
	String query="insert into employee(fname,lname,email,password,job,contact,address) values (?,?,?,?,?,?,?)";    
	PreparedStatement pstmt=conn.prepareStatement(query);
	
	pstmt.setString(1, fname);    
	pstmt.setString(2, lname);    
	pstmt.setString(3,email);    
	pstmt.setString(4, password);
	pstmt.setString(5, job);
	pstmt.setString(6,contact);
	pstmt.setString(7, address);
    int x=pstmt.executeUpdate(); 
    
    if(x==1){    
    	//out.println("Values Inserted Successfully");
    	response.sendRedirect("Admin_Login.jsp");
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