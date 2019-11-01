package com.example.catagorypanel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class categoryeducation2 {
	public String doLogin(String name,String phone,String email,String address,String description,String imagelink1,String imagelink2,String imagelink3,String catagory,String subcid) {
		Connection con = null;
		String message = null;
		try {
			// loading the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			// getting the connection from DriverManager factory Class by passing the
			// connection url and credentials
			con = DriverManager.getConnection("jdbc:mysql://instantees.czcfvkewfkpd.us-east-2.rds.amazonaws.com/instantees", "instantees", "instantees");
			// creating prepared statement for our required query
			PreparedStatement statement = con.prepareStatement("insert into catagory(nameofclient,phoneofclient,emailofclient,addressofclient,descriptionofclient,imagelink1,imagelink2,imagelink3,subc,subcid) values (?,?,?,?,?,?,?,?,?,?)");
			// setting the parameters
			statement.setString(1, name);
			statement.setString(2, phone);
			statement.setString(3, email);
			statement.setString(4, address);
			statement.setString(5, description);
			statement.setString(6, imagelink1);
			statement.setString(7, imagelink2);
			statement.setString(8, imagelink3);
			statement.setString(9, catagory);
			statement.setString(10, subcid);
			// executing the prepared statement, which returns a ResultSet
			int i= statement.executeUpdate();
			 
			if(i>0)   {
				message = "DATA HAS BEEN ENTERED SUCCESSFULLY!";
			
				
			} else {
				message = "DATA CANNOT BE ENTERED!";
			}
		} catch (Exception e) {
			message = "FAILURE";
			e.printStackTrace();
		}
		return message;
	}
	}
