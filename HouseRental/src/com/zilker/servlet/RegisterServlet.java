package com.zilker.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zilker.bean.User;
import com.zilker.delegate.CustomerDelegate;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {

			String fname = request.getParameter("firstname");
			String lname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String password = request.getParameter("psw");
//			String rePassword = request.getParameter("rpsw");
			String phoneNumber = request.getParameter("phno");
			String occupation = request.getParameter("occupation");
			String address = request.getParameter("address");
			String zipcode = request.getParameter("zipcode");
			
			User user = new User();
			user.setFname(fname);
			user.setLname(lname);
			user.setEmail(email);
			user.setPassword(password);
			user.setPhoneno(Long.parseLong(phoneNumber));
			user.setOccupation(occupation);
			user.setAddress(address);
			user.setZipcode(Integer.parseInt(zipcode));
			
			CustomerDelegate customerDelegate = new CustomerDelegate();
			if(customerDelegate.register(user))
			{
				RequestDispatcher rd = request.getRequestDispatcher("pages/jsp/login.jsp");
				rd.forward(request, response);
			}
		}catch(Exception e)
		{
			
		}
	}

}
