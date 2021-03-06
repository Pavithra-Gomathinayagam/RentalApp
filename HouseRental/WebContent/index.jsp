<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Rental</title>
<link rel="stylesheet" href="pages/css/main.css">
</head>

<body>
	<div class="container">
		<div class="header">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="../html/main.html">Home</a>
				<a href="../html/review.html">Add reviews and ratings</a> 
				<a href="TrackServlet">Track status</a> 
				<a href="ViewAcceptedServlet">View Accepted house</a> 
				<a href="../html/addrental.html">List your property</a> 
				<a href="ViewServlet">View Property details</a>

			</div>
			<ul>
				<button onclick="openNav()" class="hambug">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</button>
				<li class="name"><a href="#">NO BROKER</a></li>
				<!-- <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Sign Up</a></li> -->
				<li><a href="pages/jsp/login.jsp"><i
						class="fa fa-user-circle" aria-hidden="true"></i>Sign In</a></li>

			</ul>
		</div>
		<form action="SearchServlet" method="post">
			<div id="homeSearchBg" class="homeSearchBg homeSearchBg_1">
				<div class="row">
					<div class="searchbr">

						<input type="text" name ="location" placeholder="Find your house here...">
					</div>
					<div class="dropdwn">
						<select name="rentChoice">
							<option class="selectopt" value="RENT">RENT</option>
							<option class="selectopt" value="PG">PG</option>
						</select>

					</div>
					<button type="submit" class="btn" name=search>SEARCH</button>
				</div>
			</div>
		</form>
		<div class="cardContainer">
			<div class="rowOne">
				<div class="cardFirst">
					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>
				<div class="cardTwo">

					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>
				<div class="cardThree">

					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>
				<div class="cardFour">

					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>
				<div class="cardFive">
					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>

				<div class="cardSix">
					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>

				<div class="cardSeven">
					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>

				<div class="cardEight">
					<img
						src="http://www.whitehouse51.com/pic/www.superhdfx.com/wp-content/uploads/2015/12/kerala-villa-elevation.jpg"
						alt="Denim Jeans" style="width: 100%">
					<p class="address">Ranganathan street</p>
					<p class="area">Chepauk</p>
					<p class="zipcode">600090</p>
					<p class="price">PRICE: 15000</p>
					<p class="houseType">HOUSE TYPE: 1BHK</p>
					<p class="Landmark">LANDMARK: near chennai silks</p>
				</div>

			</div>
</body>
<script src="pages/js/main.js"></script>

</html>