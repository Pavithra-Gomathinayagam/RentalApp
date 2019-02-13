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
import com.zilker.delegate.OwnerDelegate;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
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
			rental.setEmail(email);
			System.out.println(email);
			OwnerDelegate ownerDelegate = new OwnerDelegate();
			ArrayList<Rental> rentalList = new ArrayList<>();

			rentalList = ownerDelegate.viewHouse(rental);
			if (rentalList.isEmpty())
				System.out.println("House deal is finalised with the customer.No house to view");
			else {
				request.setAttribute("rentalList",rentalList);
				getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/view.jsp").forward(request,response);
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
		
	}

}
