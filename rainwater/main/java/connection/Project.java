package connection;

import java.sql.SQLException;
import java.util.List;

public interface Project {
	public <T> List<Plant> search(T ele) throws SQLException,NumberFormatException;
}
