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
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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
			int houseId = Integer.parseInt(request.getParameter("button"));
			ArrayList<User> userList = new ArrayList<>();
			User user = new User();
			user.setId(houseId);
			OwnerDelegate ownerDelegate = new OwnerDelegate();
			userList = ownerDelegate.viewInterestedTenant(user);
			if (userList.isEmpty()) {
				System.out.println("No user has marked interest on this house!:/");
			}
			else {
				request.setAttribute("userList",userList);
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
