<!-- <!DOCTYPE jsp> -->
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%-- 	pageEncoding="UTF-8"%> --%>
<%-- <jsp lang="en"> --%>
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Goods RegistSave</title> -->
<!-- <link href="resources/css/bootstrap.css" rel="stylesheet" -->
<!-- 	type="text/css" media="all" /> -->
<!-- <link href="resources/css/style.css" rel="stylesheet" type="text/css" -->
<!-- 	media="all" /> -->
<!-- <!-- //Custom Theme files --> 
<!-- <!-- font-awesome icons -->
<!-- <link href="resources/css/font-awesome.css" rel="stylesheet"> -->
<!-- <!-- //font-awesome icons --> 
<!-- <!-- js --> 
<!-- <script src="resources/js/jquery.min.js"></script> -->
<!-- <!-- //js --> 
<!-- <!-- web fonts --> 
<!-- <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' -->
<!-- 	rel='stylesheet' type='text/css'> -->
<!-- <link -->
<!-- 	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' -->
<!-- 	rel='stylesheet' type='text/css'> -->
<!-- <!-- //web fonts --> 
<!-- <!-- for bootstrap working --> 
<!-- <script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script> -->

<!-- <!-- //for bootstrap working --> 
<!-- <!-- start-smooth-scrolling -->
<!-- </head> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Electronic Store a Ecommerce Online Shopping Category
	Bootstrap Responsive Website Template | Mail Us :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
		
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<style>
/* add to cart 버튼 스타일 */
#add_cart{
width: 300px;
height:80px;
font-size: 20px;

}
#goods_name{
    font-size: 40px;
    font-weight: bold;
    color:black;
/*     width: 380px; */
}

#detail-image{
	text-align: center;
}
#container {
	width: 960px;
	margin: 0 auto;
	text-align: center;
}

.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
/* Float the list items side by side */
.tab li {
	float: left;
}
/* Style the links inside the list items */
.tab li a {
	display: inline-block;
	color: white;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
}
/* Style the tab content */
.tabcontent {
	display: none;
	background-color: rgb(0, 154, 200);
	padding: 6px 12px;
	color: #fff;
}

ul.tab li.current {
	background-color: rgb(0, 154, 200);
	color: #222;
}

.tabcontent.current {
	display: block;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="resources/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="resources/js/jquery.min.js"></script>
<!-- //js -->
<!-- web fonts -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web fonts -->
<!-- for bootstrap working -->
<script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function() {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<body>
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog"
		aria-labelledby="myModal88" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Don't Wait, Login
						now!</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1"
							style="border-right: 1px dotted #C2C2C2; padding-right: 3em;">
							<div class="sap_tabs">
								<div id="horizontalTab"
									style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign
												in</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign
												up</span></li>
									</ul>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">
													<input name="Email" placeholder="Email Address" type="text"
														required=""> <input name="Password"
														placeholder="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Sign in" />
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="#" method="post">
													<input placeholder="Name" name="Name" type="text"
														required=""> <input placeholder="Email Address"
														name="Email" type="email" required=""> <input
														placeholder="Password" name="Password" type="password"
														required=""> <input placeholder="Confirm Password"
														name="Password" type="password" required="">
													<div class="sign-up">
														<input type="submit" value="Create Account" />
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<script src="resources/js/easyResponsiveTabs.js"
								type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function() {
									$('#horizontalTab').easyResponsiveTabs({
										type : 'default', //Types: default, vertical, accordion           
										width : 'auto', //auto or any width like 600px
										fit : true
									// 100% fit in a container
									});
								});
							</script>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<h3 class="other-nw">Sign in with</h3>
								</div>
								<div class="col-md-12">
									<ul class="social">
										<li class="social_facebook"><a href="#"
											class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#"
											class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#"
											class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#"
											class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login">
				<a href="#" data-toggle="modal" data-target="#myModal88"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div>
			<div class="w3l_logo">
				<h1>
					<a href="index.html">Goods SAJO<span>Your stores. Your
							place.</span></a>
				</h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box"> <label
					class="icon-search" for="search_box"><span
					class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Search...">
						<input type="submit" value="Send">
					</form>
				</div>
			</div>
			<div class="cart cart box_1">
				<form action="#" method="post" class="last">
					<input type="hidden" name="cmd" value="_cart" /> <input
						type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" name="submit" value="">
						<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li><a href="index.html">Home</a></li>
						<!-- Mega Menu -->
						<li class="dropdown"><a href="#" class="dropdown-toggle act"
							data-toggle="dropdown">Goods <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Kakao</h6>
											<li><a href="">라이언</a></li>
											<li><a href="">어피치<span>New</span></a></li>
											<li><a href="">무지</li>
											<li><a href="">프로도</li>
											<li><a href="">네오<span>New</span></a></li>
											<li><a href="">튜브</li>
											<li><a href="">제이지</li>
											<li><a href="">콘</li>
										</ul>
									</div>
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Line</h6>
											<li><a href="">브라운&프렌즈</a></li>
											<li><a href="">BT21</a></li>
											<li><a href="">브롤스타즈 <span>New</span></a></li>
											<li><a href=""><i>상품 등록</i></a></li>
										</ul>
									</div>
									<div class="col-sm-2">
										<ul class="multi-column-dropdown">
											<h6>General</h6>
											<li><a href="">인형</a></li>
											<li><a href="">생필품</a></li>
											<li><a href="">의류</a></li>
											<li><a href="">그 외</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<div class="w3ls_products_pos">
											<img src="resources/images/inCate1.jpg" alt=" "
												class="img-responsive" />
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>
						<li><a href="about.html">About Us</a></li>
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Notice</a></li>
						<li><a href="mail.html">Q&A</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
	<!-- banner -->
	<div class="banner banner2">
		<div class="container">
			<h2>
				Top Selling <span>Gadgets</span> Flat <i>25% Discount</i>
			</h2>
		</div>
	</div>
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Goods Detail</li>
			</ul>
		</div>
	</div>
	<br/><br/>

<!-- 	상품 판매 정보 -->
		<div class="detail">
			<div class="container">
				<div class="col-md-5 contact-left">
					<c:choose>
					    <c:when test="${(img.fsize1 eq 0) and (empty img.source1) }">사진 없음</c:when>
					    <c:when test="${img.fsize1 ne 0 }"><img src="resources/upload/${img.fname1}" alt=" " class="img-responsive"  /></c:when>
					    <c:otherwise>
					    		<img src=${img.source1 } alt=" " class="img-responsive" />
					    </c:otherwise>
					 </c:choose>
						</div>
						<div class="col-md-7 contact-right">
							<a id="goods_name">${goods.gname}</a><hr/> 
							<h2>${goods.detail }</h2>
							<div class="rating">
								<div class="rating-left">
									<img src="resources/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><i class="item_price">${goods.price }</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="${goods.gname }" /> 
									<input type="hidden" name="amount" value="${goods.price }"/>   
									<button id="add_cart" type="submit" class="w3ls-cart" style="width= 100;height=100px ;">Add to cart</button>
								</form>
							</div> 
					</div>	
			</div>
		</div>
<!-- 		상품 상세보기  -->
		<div class="top-brands">
			<div class="container" id="detail-image">
				<h3>상품 상세보기</h3>
			 <c:choose>
					    <c:when test="${img.fsize1 eq 0}"></c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname1}"><br/>
					    </c:otherwise>
					 </c:choose>
			<c:choose>
					    <c:when test="${img.fsize2 eq 0}"></c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname2}"><br/>
					    </c:otherwise>
					 </c:choose>
			<c:choose>
					    <c:when test="${img.fsize3 eq 0}"> </c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname3}"><br/>
					    </c:otherwise>
					 </c:choose>
			<c:choose>
					    <c:when test="${img.fsize4 eq 0}"></c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname4}">
					    </c:otherwise>
					 </c:choose>
			<c:choose>
					    <c:when test="${img.fsize5 eq 0}"></c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname5}"><br/>
					    </c:otherwise>
					 </c:choose>
			<img src=${img.source1}><br/>			  
			<img src=${img.source2}><br/>
			<img src=${img.source3}><br/>
			<img src=${img.source4}>
			<img src=${img.source5}>
			</div>
		</div>
<!-- 		리뷰 작성 -->
	<div class="top-brands">
		<div class="container">
			<h3>리뷰</h3>
			
		</div>
	</div>
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info"> 
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="mail.jsp">Contact Us</a></li>
						<li><a href="codes.jsp">Short Codes</a></li>
						<li><a href="faq.jsp">FAQ's</a></li>
						<li><a href="products.jsp">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info"> 
						<li><a href="products.jsp">Mobiles</a></li>
						<li><a href="products1.jsp">Laptops</a></li>
						<li><a href="products.jsp">Purifiers</a></li>
						<li><a href="products1.jsp">Wearables</a></li>
						<li><a href="products2.jsp">Kitchen</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info"> 
						<li><a href="index.jsp">Home</a></li>
						<li><a href="products.jsp">Today's Deals</a></li>
					</ul>
					<h4>Follow Us</h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-copy">
			<div class="footer-copy1">
				<div class="footer-copy-pos">
					<a href="#home1" class="scroll"><img src="resources/images/arrow.png" alt=" " class="img-responsive" /></a>
				</div>
			</div>
			<div class="container">
				<p>&copy; 2017 Electronic Store. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		</div>
	</div>
	<!-- //footer --> 
	<!-- cart-js -->
	<script src="resources/js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->   
</body>
</jsp>