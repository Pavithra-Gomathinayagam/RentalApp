<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${Config.BASE_PATH}pages/css/track.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>View</title>
</head>

<body>
    <div class="container">
        <div class="header">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="../html/update.html">Update Rental Details</a>
                <a href="${Config.BASE_PATH}StatusServlet">View status</a>
                <a href="${Config.BASE_PATH}InterestServlet">Interest shown</a>
                <a href="../html/confirmList.html">List confirmed house</a>
                <a href="../html/rejectList.html">List rejected house</a>
            </div>
            <ul>
                <button onclick="openNav()" class="hambug"><i class="fa fa-bars" aria-hidden="true"></i></button>
                <li class="name"><a href="#">NO BROKER</a></li>
                <li class="home"><a href="../html/main.html"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
                <li><a href="#"><i class="fa fa-user-circle" aria-hidden="true"></i>Sign Out</a></li>
            </ul>
        </div>
        <div class="cardContainer">
            <div class="rowOne">
            
            		<%@ page import="com.zilker.bean.Rental"%>
					<%@page import="java.util.ArrayList"%>
	
					<c:forEach var="rent" items="${rentalList}"> 
				
					<div class="cardFirst">
					<img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
					<p class="address"><c:out value="${rent.rentaddress}" /> </p>
                    <p class="area"><c:out value="${rent.rentarea}" /></p>
                    <p class="zipcode"><c:out value="${rent.zipcode}" /></p>
                    <p class="houseType"><c:out value="HOUSE TYPE: ${rent.housetype}" /></p>
                    <p class="price"><c:out value="PRICE: ${rent.price}" /></p>
                   
					</div>
					</c:forEach>
            </div>
        </div>
</body>
<script src="${Config.BASE_PATH}pages/js/main.js"></script>

</html>