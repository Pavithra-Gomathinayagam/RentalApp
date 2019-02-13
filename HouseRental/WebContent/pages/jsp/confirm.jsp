<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${Config.BASE_PATH}pages/css/confirm.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Confirm</title>
</head>

<body>
    <div class="container">
        <div class="header">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="../html/main.html">Search</a>
                <a href="../html/review.html">Add reviews and ratings</a>
                <a href="../html/track.html">Track status</a>
                <a href="../html/confirm.html">View Accepted house</a>
                <a href="../html/addrental.html">List your property</a>
                <a href="../html/view.html">View Property details</a>
            </div>
            <ul>
                <button onclick="openNav()" class="hambug"><i class="fa fa-bars" aria-hidden="true"></i></button>
                <li class="name"><a href="#">NO BROKER</a></li>
                <li><a href="#"><i class="fa fa-user-circle" aria-hidden="true"></i>Sign Out</a></li>

            </ul>
        </div>
        <div class="cardContainer">
            <div class="rowOne">
            
            	<%@ page import="com.zilker.bean.Rental"%>
				<%@page import="java.util.ArrayList"%>
				
	
					<c:forEach var="confirm" items="${approvedList}"> 
				
					<div class="cardFirst">
					<img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    
					<p class="address"><c:out value="${confirm.rentaddress}" /> </p>
                    <p class="area"><c:out value="${confirm.rentarea}" /></p>
                    <p class="houseType"><c:out value="HOUSE TYPE: ${confirm.housetype}" /></p>
                    <p class="price"><c:out value="PRICE: ${confirm.price}" /></p>
                    <p class="status"><c:out value="STATUS: ${confirm.status}" /></p>
                    <p><form action="${Config.BASE_PATH}ConfirmServlet" method = "post"><button value="${confirm.houseid}" name="btn" type="submit"><a href="#">Confirm</a></button></form></p>
                   
					</div>
					</c:forEach>
            
            
                <!-- <div class="cardFirst">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardTwo">

                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardThree">

                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardFour">

                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardFive">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="cardSix">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="cardSeven">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="cardEight">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="#openModal">Confirm</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
 -->
            </div>
        </div>
</body>
<script src="${Config.BASE_PATH}pages/js/main.js"></script>

</html>