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
 * Servlet implementation class TrackServlet
 */
@WebServlet("/TrackServlet")
public class TrackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackServlet() {
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
			CustomerDelegate customerDelegate = new CustomerDelegate();
			ArrayList<Rental> userList = new ArrayList<>();
			
			userList = customerDelegate.viewUserStatus(rental);
	
			if (userList.isEmpty())
				System.out.println("No house has been marked as interested");
			else {
			
				request.setAttribute("trackList",userList);
				getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/track.jsp").forward(request,response);
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
