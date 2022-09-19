package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class userDAO {
	
	boolean inited;
	
	String url;
	String user;
	String pwd;

	Connection con;
	Statement st;
	
//	public static void main(String[] args) throws ClassNotFoundException, SQLException {
//		
//		userDAO dao = new userDAO();
//		userDTO dto = new userDTO();
//		System.out.println("???");
//		dto.setId("godaehyeon");
//		dto.setPassword("4321");
//		dao.save(dto);
//		System.out.println("DB ������");
//		
//		dto = dao.find(dto.getId());
//		System.out.println(dto.getId());
//		
//	}
	
	public void init() throws SQLException, ClassNotFoundException {
		
		if(inited) {
			return;
		}
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		url="jdbc:oracle:thin:@localhost:1521/system";
		user="system";
		pwd="7735";
		
		con =DriverManager.getConnection(url,user,pwd);
		st= con.createStatement();
		inited = true;
		
	}
	
	public void close() {
		
		try {
			st.close();
			con.close();
			
		}catch(Exception e) {
			
		}
		
		
	}
	
	
	public boolean save(userDTO user) {
		
		try {
			
			
				
			init();
		
			
			String sql = "INSERT INTO  MEMBER m (m.id,m.password) VALUES('"+user.getId()+"','"+user.getPassword()+"')";
			
			st.executeQuery(sql);
			
			return true;
			
		}catch (Exception e) {
			
		
			return false;
			// TODO: handle exception
		}
		
	}


	public userDTO find(String id) throws ClassNotFoundException, SQLException {
		
			
				
			init();
		
			
			String sql = "SELECT * FROM MEMBER m WHERE m.id='"+id+"'";
			
			ResultSet r=st.executeQuery(sql);
			
			userDTO temp=new userDTO();
			
			while(r.next()) {
				
				temp.setId(r.getString("id"));
				temp.setPassword(r.getString("password"));
			}
			
			
			
			return temp;
	}

}
