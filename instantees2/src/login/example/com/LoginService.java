package login.example.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginService {
	public String doLogin(String email, String password) {
		Connection con = null;
		String message = null;
		try {
			// loading the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			// getting the connection from DriverManager factory Class by passing the
			// connection url and credentials
			con = DriverManager.getConnection("jdbc:mysql://instantees.czcfvkewfkpd.us-east-2.rds.amazonaws.com/instantees", "instantees", "instantees");
			// creating prepared statement for our required query
			PreparedStatement statement = con.prepareStatement("select * from adminlogin where email=? and password=?");
			// setting the parameters
			statement.setString(1, email);
			statement.setString(2, password);
			// executing the prepared statement, which returns a ResultSet
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				message = "Login Successfull";
				
			} else {
				message = "Please Check Email Id or Password";
			}
		} catch (Exception e) {
			message = "Please Check Email Id or Password";
			e.printStackTrace();
		}
		return message;
	}
}