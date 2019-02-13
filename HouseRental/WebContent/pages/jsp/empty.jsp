<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello</h1>
	<table border="1px">
		<%@ page import="com.zilker.bean.Rental"%>
		<%@page import="java.util.ArrayList"%>
		
		<%
		ArrayList<ArrayList<Rental>> list = new ArrayList<ArrayList<Rental>>();
			list = (ArrayList<ArrayList<Rental>>) request.getAttribute("rentList"); 
		%>
		<c:forEach var="st" items="${searchList}">
			<c:out value="${st.rentaddress}" />

			<c:out value="${st.rentarea}" />

			<c:out value="${st.zipcode}" />

			<c:out value="${st.housetype}" />

			<c:out value="${st.price}" />

		</c:forEach>
<%-- 
		<c:forEach var="rent" items="${rentList}">
			<c:forEach var="search" items="${searchList}">
				<c:out value="${search.rentaddress}" />
				<c:out value="${search.rentarea}" />
				<c:out value="${search.zipcode}" />
				<c:out value="${search.landmark}" />

				<c:out value="${search.housetype}" />
				<c:out value="${search.price}" />

				<c:out value="${search.deposit}" />
				<c:out value="${search.builtSqFeet}" />
				<c:out value="${search.totalFloor}" />
				<c:out value="${search.totalFloor}" />
				<c:out value="${search.floorNo}" />
				<c:forEach var="rentFacility" items="${facilityList}">

					<c:out value="${rentFacility.facility}" />
				</c:forEach>
				<c:forEach var="rentReview" items="${reviewList}">

					<c:out value="${rentReview.review}" />
					<c:out value="${rentReview.rating}" />
				</c:forEach>
			</c:forEach>
		</c:forEach> --%>

		<%-- <%
		for (int i = 0; i < list.size(); i++) 
		{
		 for (int k = 0; k < list.get(0).size(); k++) 
		 { 
			System.out.print("hi");
		 	System.out.print(" " + list.get(i).get(k)); 
		 } 
		 System.out.println();
		 }
		%> --%>
		<%
		
			System.out.println(list.size());
			for (int i = 0; i < list.size()-1; i++) 
			{
   				for (Rental rental : list.get(0))
   				{
       				System.out.print(rental.getRentaddress() +" "+rental.getRentarea()+" "+rental.getZipcode()+" "+rental.getLandmark()+" "+rental.getHousetype()+" "+rental.getPrice()+" "+rental.getDeposit()+" "+rental.getBuiltSqFeet()+" "+rental.getTotalFloor()+" "+rental.getFloorNo()+" "+rental.getPhoneno()); 
   				
   				for (Rental rent : list.get(1))
   				{
       				System.out.print(rent.getFacility()); 
   				
   				for (Rental ren : list.get(2))
   				{
       				System.out.print(ren.getReview()+" "+ren.getRating()); 
   				}
   				}
				}
   				System.out.println(); 
			}
		%>
	</table>
</body>
</html>
