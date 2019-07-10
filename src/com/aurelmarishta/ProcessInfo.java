package com.aurelmarishta;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Servlet implementation class ProcessInfo
 */
@WebServlet("/ProcessInfo")
public class ProcessInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		String url = "/DisplayInfo.jsp";
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String phone = request.getParameter("phone");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String street = request.getParameter("street");
		String zipcode  = request.getParameter("zipcode");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		updateDB(fName, lName, phone, state, city, street, zipcode, email, password);
				
		
		
		Coustumer cust = new Coustumer(fName, lName, phone, state, city, street, zipcode, email, password);
		
		request.setAttribute("cust", cust);
		getServletContext().getRequestDispatcher(url).forward(request,response);
	}
	
	protected void updateDB(String fName, String lName, String phone, String state, String city, String street, String zipcode, String email, String uPassword) {
		Connection con;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/test2";
			String username = "dbadmin";
			String password = "1234";
			con = DriverManager.getConnection(url, username, password);
			Statement s = con.createStatement();
			String query = "INSERT INTO CUSTOMER "
					+ "(first_name, last_name, phone, state, city, street, zipcode, email, password, cust_id) "
					+ "VALUES ('" + fName + "', '" + lName + "', '" + phone +"', '" + state + "', '"+ city+ "', '"+ street +"', '"+ zipcode +"', '" + email +"', '"+ uPassword  + "', NULL);";
			s.executeUpdate(query);
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	static boolean regexChecker(String theRegex, 
			String str2Check) {
		
		
		Pattern regexPattern = 
				Pattern.compile(theRegex);
				
		Matcher regexMatcher = 
				regexPattern.matcher(str2Check);
		
		if (regexMatcher.matches()){
			return true;
		} else {
			return false;
		}
		
	}

}
