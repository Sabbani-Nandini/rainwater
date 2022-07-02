package connection;

import java.sql.SQLException;
import java.util.List;

abstract class Searchby implements Project
{
	public <T> List<Plant> search(T ele) throws SQLException,NumberFormatException
	{return null;}
}