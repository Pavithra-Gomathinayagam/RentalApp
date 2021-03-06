<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${Config.BASE_PATH}pages/css/user.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Users</title>
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
	
					<c:forEach var="interestedUser" items="${userList}"> 
				
					<div class="cardFirst">
					<p class="fname"><c:out value="${interestedUser.fname}" /> </p>
                    <p class="email"><c:out value="${interestedUser.email}" /></p>
                    <p class="phoneno"><c:out value="${interestedUser.phoneno}" /></p>
                    <p class="occupation"><c:out value="OCCUPATION:${interestedUser.occupation}" /></p>
                    <p class="address"><c:out value="ADDRESS: ${interestedUser.address}" /></p>
                    <p class="area"><c:out value="AREA: ${interestedUser.area}" /></p>
                    <p class="zipcode"><c:out value="ZIPCODE: ${interestedUser.zipcode}" /></p>
                    <p class="reqamt"><c:out value="REQ AMT: ${interestedUser.requestpay}" /></p>
                    <p name = "houseId" value = "${interestedUser.id}"></p>
                    <p><button value= "${interestedUser.userId}" name="butn"><a href="${Config.BASE_PATH}AcceptServlet">Accept</a></button></p>
					</div>
					</c:forEach>
               <!--  <div class="cardFirst">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardTwo">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardThree">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardFour">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="cardFive">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="cardSix">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="cardSeven">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>

                <div class="cardEight">
                    <p class="fname">Name</p>
                    <p class="email">Email</p>
                    <p class="phoneno">Phone number</p>
                    <p class="occupation">Occupation</p>
                    <p class="address">Ranganathan street</p>
                    <p class="area">Chepauk</p>
                    <p class="zipcode">600005</p>
                    <p class="reqamt">15000</p>
                    <p><button><a href="#openModal">Accept</a></button></p>
                    <p><button>Add to Cart</button></p>
                </div>
 -->
            </div>
        </div>
</body>
<script src="${Config.BASE_PATH}pages/js/main.js"></script>
</html>