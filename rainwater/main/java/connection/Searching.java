package connection;
import java.util.*;
import java.sql.*;
public class Searching extends Searchby{
	public <T> List<Plant> search(T ele) throws SQLException,NumberFormatException{
		String str=(String)ele;
		int flag=0;
		for (char ch : str.toCharArray())
		{
	        if(!((int)ch>=48 && (int)ch<=57))
	        {
	        	flag=1;
	        	break;
	        }
	    }
		if(flag==0) {
			return Searching.searchbyId(str);
		}
		else {
			return Searching.searchbyname(str);
		}
	}
	public static List<Plant> searchbyId(String str) throws SQLException{
		List<Plant> result = new ArrayList<>();
		try {
			Connection conn=GetConnection.Establish();
			if(conn!=null)
			{
				Statement st=conn.createStatement();
				ResultSet rs;
				int id = Integer.parseInt(str);
				rs=st.executeQuery("select *  from tank where plantId='"+id+"'");
				while(rs.next()) {
					Plant p1=new Plant();
					p1.tankID=rs.getInt("tankID");
					p1.capacity=rs.getInt("capacity");
					p1.area=rs.getString("area");
					p1.plantID=rs.getInt("plantID");
					p1.Water_Level=rs.getInt("Water_Level");
					p1.impurity=rs.getString("impurity");
					p1.plantName=rs.getString("plantName");
					
					result.add(p1);
				}
				//st.executeUpdate("drop view name;");
				if(GetConnection.closeConnection(conn))
					System.out.println("Connection Closed");
			}
			else
			{
				System.out.println("Connection not Established");
			}
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		return result;
	}
	public static List<Plant> searchbyname(String str) throws SQLException{
		List<Plant> result=new ArrayList<>();
		try 
		{
			Connection conn = GetConnection.Establish();
			if(conn!=null)
			{
				Statement st=conn.createStatement();
				ResultSet rs;
				rs=st.executeQuery("select *  from tank where plantName='"+str+"'");
				while(rs.next()) {
					Plant p1=new Plant();
					p1.tankID=rs.getInt("tankID");
					p1.capacity=rs.getInt("capacity");
					p1.area=rs.getString("area");
					p1.plantID=rs.getInt("plantID");
					p1.Water_Level=rs.getInt("Water_Level");
					p1.impurity=rs.getString("impurity");
					p1.plantName=rs.getString("plantName");
					
					result.add(p1);
				}
			    st.executeUpdate("drop view fname;");
				if(GetConnection.closeConnection(conn))
					System.out.println("Connection Closed");
			}
			else
			{
				System.out.println("Connection not Established");
			}
		}
		catch(NumberFormatException e) {
			System.out.println(e);
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return result;
	}
}
