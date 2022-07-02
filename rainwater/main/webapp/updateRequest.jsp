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

<%

try{
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String status=request.getParameter("status");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	
	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();
	
	String query="update request set status='"+status+"' where email='"+email+"'";    
	/*PreparedStatement pstmt=conn.prepareStatement();*/
	String str="insert into user(fname,lname,email,address)SELECT fname,lname,email,address FROM request WHERE status='accept' and email='"+email+"'";
    int x=st.executeUpdate(query); 
    st.executeUpdate(str);
    if(x==1){    
    	//out.println("Values updated Successfully"); 
    	response.sendRedirect("requestGet.jsp");
    }
}
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