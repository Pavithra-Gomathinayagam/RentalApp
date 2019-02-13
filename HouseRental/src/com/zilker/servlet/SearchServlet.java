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
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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
		HttpSession session=request.getSession();
		try {
	
			String location = request.getParameter("location");
			String rentChoice = request.getParameter("rentChoice");
			String email=(String)session.getAttribute("email"); 
			Rental rental = new Rental();
			rental.setRentchoice(rentChoice);
			rental.setRentarea(location);
			rental.setEmail(email);
			
			System.out.println(email);
			System.out.println(location);
			System.out.println(rentChoice);
			
			int flag = 0;
			int houseId = 0;
			long phoneNo = 0;
			ArrayList<Rental> searchList = new ArrayList<>();
			ArrayList<ArrayList<Rental>> rentList = new ArrayList<>();
			/*
			 * ArrayList<Rental> facilityList = new ArrayList<>(); ArrayList<Rental>
			 * reviewList = new ArrayList<>();
			 */
			CustomerDelegate customerDelegate = new CustomerDelegate();
			searchList = customerDelegate.search(rental);
			if (searchList.isEmpty())
				flag = 1;

			if (flag == 1) {
				System.out.println("No house to display");
			}
			else {
				
				if(rentChoice.equalsIgnoreCase("RENT"))
				{
					rentList = customerDelegate.searchRent(rental);
					System.out.println(rentList);
					
					/*
					 * for (Rental i : rentalList) { houseId = i.getHouseid();
					 * rental.setHouseid(houseId); phoneNo =
					 * customerDelegate.displayContact(rental); facilityList =
					 * customerDelegate.displayFacility(rental); reviewList =
					 * customerDelegate.displayReview(rental); }
					 */
					request.setAttribute("searchList",searchList);
					request.setAttribute("rentList",rentList);
					/*
					 * request.setAttribute("facilityList",facilityList);
					 * request.setAttribute("reviewList",reviewList);
					 */
					getServletConfig().getServletContext().getRequestDispatcher("/pages/jsp/search.jsp").forward(request,response);
				}
				/* searchList = customerDelegate.search(rental); */
				
			
			}
		}catch(Exception e)
		{
			
		}
	}

}
