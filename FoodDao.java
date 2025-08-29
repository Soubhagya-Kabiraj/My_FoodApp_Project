package master.dao;
import java.sql.*;

import master.dto.FoodDto;
import master.utilities.ConnectionFactory;

public class FoodDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="SELECT * FROM FOOD";
	private String insert_sql="INSERT INTO FOOD VALUES(?,?,?)";
	private String delete_sql="DELETE FROM FOOD WHERE FID=?";
	private String update_sql="UPDATE FOOD SET FNAME = ?, PRICE = ? WHERE FID = ?";
	private String search_fid_sql="SELECT * FROM FOOD WHERE FID=?";
	
	public ResultSet getData(){
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet searchfid(String fid) {
		try{
			master.utilities.ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    ps=cn.prepareStatement(search_fid_sql);
		    ps.setString(1,fid);
			rs=ps.executeQuery();//execute the query and store the data into resultset
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	
	public void insertData(FoodDto fdto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1, fdto.getFid());
			ps.setString(2, fdto.getFname());
			ps.setDouble(3, fdto.getPrice());
			ps.executeUpdate(); //STORING DATA
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
	}
	
	public void deleteData(FoodDto fdto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1, fdto.getFid());
			ps.executeUpdate();
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
	}
	
	public void updateData(FoodDto fdto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(update_sql);
			ps.setString(1, fdto.getFname());
			ps.setDouble(2, fdto.getPrice());
			ps.setString(3, fdto.getFid());
			ps.executeUpdate(); //STORING DATA
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
	}
}
