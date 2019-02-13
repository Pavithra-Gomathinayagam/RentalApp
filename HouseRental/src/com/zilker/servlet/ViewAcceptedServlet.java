package com.zilker.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zilker.bean.Rental;
import com.zilker.delegate.CustomerDelegate;

/**
 * Servlet implementation class ViewAcceptedServlet
 */
@WebServlet("/ViewAcceptedServlet")
public class ViewAcceptedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAcceptedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		try {
			
			String email=(String)session.getAttribute("email");
			Rental rental = new Rental();
			CustomerDelegate customerDelegate = new CustomerDelegate();
			ArrayList<Rental> approvedHouseList = new ArrayList<>();

			rental.setEmail(email);
			System.out.println(email);
			approvedHouseList = customerDelegate.viewApprovedHouse(rental);
			if (approvedHouseList.isEmpty())
				System.out.println("No approved house to display");
			else {
			
				request.setAttribute("approvedList",approvedHouseList);
				getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/confirm.jsp").forward(request,response);
			}
			
			
		}catch(Exception e)
		{
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
