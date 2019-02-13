<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="${Config.BASE_PATH}pages/css/seach.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Search</title>
</head>

<body class="parent">
	<div class="container">
		<div class="header">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="../html/main.html">Search</a> 
				<a href="../html/review.html">Add reviews and ratings</a> 
				<a href="${Config.BASE_PATH}TrackServlet">Track status</a> 
				<a href="../html/confirm.html">View Accepted house</a>
				<a href="../html/addrental.html">List your property</a>
				<a href="../html/view.html">View Property details</a>
			</div>
			<ul>
				<button onclick="openNav()" class="hambug">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</button>
				<li class="name"><a href="#">NO BROKER</a></li>
				<!-- <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Sign Up</a></li> -->
				<li><a href="../html/login.html"><i
						class="fa fa-user-circle" aria-hidden="true"></i>Sign Out</a></li>

			</ul>
		</div>
		
		<div class="cardContainer">
			<div class="rowOne">

				<%@ page import="com.zilker.bean.Rental"%>
				<%@page import="java.util.ArrayList"%>
				
	
					<c:forEach var="st" items="${searchList}"> 
				
					<div class="cardFirst">
					<img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
					<p class="address"><c:out value="${st.rentaddress}" /> </p>
                    <p class="area"><c:out value="${st.rentarea}" /></p>
                    <p class="zipcode"><c:out value="${st.zipcode}" /></p>
                    <p class="houseType"><c:out value="${st.rentaddress}" /></p>
                    <p class="price"><c:out value="${st.price}" /></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
					</div>
					</c:forEach>
				
				<!-- <div class="cardFirst">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>
                <div class="cardTwo">

                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>
                <div class="cardThree">

                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>
                <div class="cardFour">

                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>
                <div class="cardFive">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>

                <div class="cardSix">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>

                <div class="cardSeven">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div>

                <div class="cardEight">
                    <img src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
                        alt="Denim Jeans" style="width:100%">
                    <p class="address">Ranganathan street</p>
                    <p class="area">Mylapore</p>
                    <p class="zipcode">600005</p>
                    <p class="houseType">HOUSE TYPE: 1BHK</p>
                    <p class="price">PRICE: 14000</p>
                    <p><button>Add to Cart</button></p>
                    <p><button><a href="#openModal">View Details</a></button></p>
                </div> -->

			</div>
			<div id="openModal" class="modalDialog">
				<div class="modal">
					<a href="#close" title="Close" class="close">X</a>
					<div class="modalImage">
						<img
							src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
							alt="Denim Jeans" style="width: 100%">
					</div>
					<div class="modalContent">
						<div class="modalLeft">
							<h3>Venkatanarayan street near pothys</h3>
							<p>Mylapore</p>
							<p>Zipcode</p>
							<p>Landmark:near saravana stores</p>
							<p>Contact:9999999999</p>
						</div>
						<div class="modalRight">
							<p>HouseType:1BHK</p>
							<p>Choice:Rent</p>
							<p>Price:14000</p>
							<p>Sq-feet:1000sq.ft</p>
							<p>Total FLoor:10</p>
							<p>Floor Number:5</p>
						</div>
					</div>
					<p class="facility">Amenities:</p>
					<div class="grid-container">
						<div>ac</div>
						<div>security</div>
						<div>car parking</div>
						<div>CCTV</div>
						<div>Visitor parking</div>
						<div>Plantation avenue</div>
						<div>Corporation water</div>
						<div>Fire safety</div>
					</div>
					<div id="googleMap" style="width: 100%; height: 400px;"></div>
					<p class="reviewRating">Reviews & Ratings:</p>
					<div class="review">
						<div class="reviewOne">
							<p>Name: Pavi</p>
							<p>Good place to say.</p>
							<p>5.0</p>
						</div>
						<div class="reviewTwo">
							<p>Name: Pavi</p>
							<p>Good place to say.</p>
							<p>5.0</p>
						</div>
						<div class="reviewTwo">
							<p>Name: Pavi</p>
							<p>Good place to say.</p>
							<p>5.0</p>
						</div>
					</div>
					<div class="markButton">
						<button type="button">Mark Interest</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
<script>
	function myMap() {
		var mapProp = {
			center : new google.maps.LatLng(51.508742, -0.120850),
			zoom : 5,
		};
		var map = new google.maps.Map(document.getElementById("googleMap"),
				mapProp);
	}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBo3N0pSQNaNh14n7F_Vpr2lkpBahKR8ac&callback=myMap"></script>

<script src="${Config.BASE_PATH}pages/js/main.js"></script>

</html>