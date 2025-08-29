package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.RegisterDto;
import master.utilities.ConnectionFactory;

public class RegisterDao {
	private Connection cn=null;
//	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="INSERT INTO REGISTER VALUES(?,?,?)";
	private String check_login_sql="SELECT * FROM REGISTER WHERE UNAME=? AND PASS=?";
	
	public void insertData(RegisterDto rdto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1, rdto.getUname());
			ps.setString(2, rdto.getPass());
			ps.setString(3, rdto.getNm());
			ps.executeUpdate(); //STORING DATA
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
	}
	public boolean checkData(String uname, String pass) {
		boolean flag=false;
		try{
			
			master.utilities.ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    ps=cn.prepareStatement(check_login_sql);
		    ps.setString(1,uname);
		    ps.setString(2, pass);
			rs=ps.executeQuery();//execute the query and store the data into resultset
			if(rs.next())
				flag=true;
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return flag;
	}
}
