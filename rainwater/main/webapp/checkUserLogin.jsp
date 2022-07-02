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

String un=request.getParameter("email");
String p=request.getParameter("password");
try
{

	Connection conn=GetConnection.Establish();
	Statement st=conn.createStatement();

 st = conn.createStatement();
 
ResultSet rs;
rs=st.executeQuery("select email,password from register"); 

  String email="",password="";
  int flag=0;
  if(un!=null)
  {
	  while(rs.next())
	  {
		  email=rs.getString("email");
		  password=rs.getString("password");
		  if(un.equals(email)&&p.equals(password))
		  {
			  flag=1;
			  response.sendRedirect("Welcome_User.jsp");
			  break;
		  }
	  }
  }
if(un!=null&& flag ==0)
{
	out.println("<a href='User_Login.jsp'>Retry</a>");
}
conn.close();
}
catch(SQLException ex)
{

 out.println(ex);

}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>