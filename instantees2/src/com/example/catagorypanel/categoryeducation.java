package com.example.catagorypanel;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.catagorypanel.categoryeducation2;

import com.example.catagorypanel.EmailUtility;
@WebServlet("/education")

public class categoryeducation extends HttpServlet {

	categoryeducation2 service = null;

	public void init(ServletConfig config) throws ServletException {
		service = new categoryeducation2();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("nameofclient");
		String phone = request.getParameter("phoneofclient");
		String email = request.getParameter("emailofclient");
		String address = request.getParameter("addressofclient");
		String description = request.getParameter("descriptionofclient");
		String imagelink1 = request.getParameter("imagelink1");
		String imagelink2 = request.getParameter("imagelink2");
		String imagelink3 = request.getParameter("imagelink3");
		String catagory = request.getParameter("list");
		String subcid = request.getParameter("list2");
		String recipient= request.getParameter("emailofclient");
		
		
		String subject = "Congrats! "+name+" Has Been Posted Successfully";
		String content = "Thank You For Posting Your Free Ad! We Will Make This Available On Our Website For Free Till 7 Days! Enjoy Our Traffic!";

		
		try {
			EmailUtility.sendEmail("smtp.gmail.com", "587", "instanteesofficial@gmail.com", "7011112666", recipient, subject,
					content);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			ex.getMessage();
		}
		

		try {
			EmailUtility2.sendEmail("smtp.gmail.com", "587", "instanteesofficial@gmail.com", "7011112666", "instanteesofficial@gmail.com", "A New Ad Is Posted With The Following Details" +name+"",
					""+name+" "+phone+" "+email+" "+address+" In Catagory "+catagory+"");
			
		} catch (Exception ex) {
			ex.printStackTrace();
			ex.getMessage();
		}
		
		
		System.out.println(subcid);
System.out.println(catagory);
		String message = service.doLogin(name, phone,email,address,description,imagelink1,imagelink2,imagelink3,catagory,subcid);
		if (message.equals("DATA HAS BEEN ENTERED SUCCESSFULLY!")) {
			
		}
		response.getWriter().write(message);
	}
}