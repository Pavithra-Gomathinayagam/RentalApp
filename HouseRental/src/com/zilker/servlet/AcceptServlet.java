package com.zilker.servlet;

import java.io.IOException;
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
 * Servlet implementation class AcceptServlet
 */
@WebServlet("/AcceptServlet")
public class AcceptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptServlet() {
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
		int checkPoint = 0;
		try {
			int userId = Integer.parseInt(request.getParameter("butn"));
			int houseId = Integer.parseInt(request.getParameter("houseId"));
			Rental rental = new Rental();
			rental.setHouseid(houseId);
			rental.setUserid(userId);
			OwnerDelegate ownerDelegate = new OwnerDelegate();
			checkPoint = ownerDelegate.checkAcceptedRequest(rental);
			if (checkPoint == 0)
				System.out.println("Already marked as accepted");
			else {
				ownerDelegate.acceptUserRequest(rental);
				getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/user.jsp").forward(request,response);
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
