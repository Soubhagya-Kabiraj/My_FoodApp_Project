package master.utilities;
import java.sql.*;
public class ConnectionFactory {
	private Connection cn=null;
	public Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //REGISTER AND LOAD THE DRIVER
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/FOODAPPDB","root","soubhagya");  //ESTABLISH THE CONNECTION
		}
		catch(ClassNotFoundException ce){
			ce.printStackTrace();
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		return cn;
	}
}
