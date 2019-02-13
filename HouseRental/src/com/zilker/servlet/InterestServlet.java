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
import com.zilker.bean.User;
import com.zilker.delegate.OwnerDelegate;

/**
 * Servlet implementation class InterestServlet
 */
@WebServlet("/InterestServlet")
public class InterestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InterestServlet() {
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
			
			ArrayList<Rental> rentalList = new ArrayList<>();
			ArrayList<User> userList = new ArrayList<>();
			Rental rental = new Rental();
			User user = new User();
			OwnerDelegate ownerDelegate = new OwnerDelegate();
			String email=(String)session.getAttribute("email");
			
			
			rental.setEmail(email);
			rentalList = ownerDelegate.viewHouse(rental);
			if (rentalList.isEmpty())
				System.out.println("Interests shown is empty");
			else {
			
				request.setAttribute("interestList",rentalList);
				getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/interest.jsp").forward(request,response);
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
