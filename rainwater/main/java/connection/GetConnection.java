package connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
public class GetConnection 
{
	public  static Connection Establish() throws SQLException 
	{
		 try
		 {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rainwater","root","Chikki@987");
			 return conn;
		 }
		 catch(ClassNotFoundException ex)
		 {

			 	System.out.println(ex);
			 	ex.printStackTrace();
		 }
		 return null;
		 	
	 }
public static boolean closeConnection(Connection obj)
{
	try
	{
		if(obj != null)
		{
			obj.close();
		}
		
	}
	catch (SQLException e)
	{
		return false;
		
	}
	return true;

}
}