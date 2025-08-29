package master.dao;
import java.sql.*;

import master.dto.OrderDto;
import master.utilities.ConnectionFactory;
public class OrderDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="SELECT * FROM ORDERDTLS";
	private String insert_sql="INSERT INTO ORDERDTLS(FID,QTY,UNAME) VALUES(?,?,?)";
//	private String delete_sql="DELETE FROM FOOD WHERE FID=?";
//	private String update_sql="UPDATE FOOD SET FNAME = ?, PRICE = ? WHERE FID = ?";
	private String billing_sql="SELECT * FROM BILLING WHERE UNAME=?";
	
	public ResultSet billing(String uname) {
		try{
			master.utilities.ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    ps=cn.prepareStatement(billing_sql);
		    ps.setString(1,uname);
			rs=ps.executeQuery();//execute the query and store the data into resultset
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
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
	public void insertData(OrderDto odto) {
		try {
			master.utilities.ConnectionFactory cf=new ConnectionFactory();
			cn=cf.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1, odto.getFid());
			ps.setInt(2, odto.getQty());
			ps.setString(3, odto.getUname());
			ps.executeUpdate(); //STORING DATA
		}	
		catch(SQLException se) {
			se.printStackTrace();
		}
	}
}
