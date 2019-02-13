package com.zilker.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zilker.bean.Rental;
import com.zilker.delegate.CustomerDelegate;

/**
 * Servlet implementation class ConfirmServlet
 */
@WebServlet("/ConfirmServlet")
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmServlet() {
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
		HttpSession session=request.getSession();
		try {
			
			int houseId = Integer.parseInt(request.getParameter("btn"));
			System.out.println(houseId);
			String email=(String)session.getAttribute("email"); 
			Rental rental = new Rental();
			CustomerDelegate customerDelegate = new CustomerDelegate();
			
			rental.setEmail(email);
			rental.setHouseid(houseId);
			if(customerDelegate.conformHouse(rental))
			{
				getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/confirm.jsp").forward(request,response);
			}
			else {
				
			}
		}catch(Exception e)
		{
			
		}
	}

}
