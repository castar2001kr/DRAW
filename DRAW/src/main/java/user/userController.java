package user;

import java.sql.SQLException;

public class userController {

	userService service;
	
	public void init() {
		
		service=new userService();
		service.init();
		
	}
	
	public boolean join(userDTO input) throws SQLException {
		
		boolean result= service.join(input);
		
		return result;
	
	}
	
	public boolean login(userDTO input) {
		
		try {
			
			boolean result= service.login(input);
			return result;
			
			
		}catch(Exception e1) {
			
			return false;
		}
		
		
	}
	
}
