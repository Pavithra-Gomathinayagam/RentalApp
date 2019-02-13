<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${Config.BASE_PATH}pages/css/interest.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Interest shown</title>
</head>

<body>
    <div class="container">
        <div class="header">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="../html/update.html">Update Rental Details</a>
                <a href="../html/status.html">View status</a>
                <a href="../html/interest.html">Interest shown</a>
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
	
					<c:forEach var="interestedUser" items="${interestList}"> 
				
					<div class="cardFirst">
					<img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
					<p class="address"><c:out value="${interestedUser.rentaddress}" /> </p>
                    <p class="area"><c:out value="${interestedUser.rentarea}" /></p>
                    <p class="zipcode"><c:out value="${interestedUser.zipcode}" /></p>
                    <p class="houseType"><c:out value="HOUSE TYPE: ${interestedUser.housetype}" /></p>
                    <p class="price"><c:out value="PRICE: ${interestedUser.price}" /></p>
                    <p><button type="submit" name="button" value = "${interestedUser.houseid}"><a href="${Config.BASE_PATH}UserServlet">View Users</a></button></p>
					</div>
					</c:forEach>
            	
               <!--  <div class="cardFirst">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 15000</p>
                    <p><button><a href="user.html">View Users</a></button></p>
                    
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
                    <p><button><a href="user.html">View Users</a></button></p>
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
                    <p><button><a href="user.html">View Users</a></button></p>
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
                    <p><button><a href="user.html">View Users</a></button></p>
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
                    <p><button><a href="user.html">View Users</a></button></p>
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
                    <p><button><a href="user.html">View Users</a></button></p>
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
                    <p><button><a href="user.html">View Users</a></button></p>
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
                    <p><button><a href="user.html">View Users</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
 -->
            </div>
        </div>
</body>
<script src="${Config.BASE_PATH}pages/js/main.js"></script>

</html>