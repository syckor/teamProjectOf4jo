<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <% 
    
    String cmd = "";
    cmd=request.getParameter("cmd");
    
    
    
    %>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Electronic Store a Ecommerce Online Shopping Category
	Bootstrap Responsive Website Template | Products :: w3layouts</title>
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
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resources/css/fasthover.css" rel="stylesheet"
	type="text/css" media="all" />
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.1.min.js"></script>

<script src="resources/js/minicart.js"></script>
<!-- //for bootstrap working -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
		$(function() {
			/*  체크박스 전체선택 해제 */
			$("#checkAll").click(function() {
				if ($("#checkAll").is(":checked")) {
					$(".check").attr("checked", true);
				} else {
					$(".check").attr("checked", false);
				}

			});
			/* 각각 삭제 버튼 클릭시 */
			$(".sbmincart-remove").click(function() {
				var b = $(".sbmincart-price").val();
				var a = $(".sbmincart-subtotal").val();
				$(".sbmincart-subtotal").val(a - b);

				$(this).parents("tr").remove();

			})

			/*체크박스 선택된 행만 넘기기*/
			$(".sbmincart-submit").click(function() {
				if ($(".check").is(":checked") == true) {
				

				}

			})

			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);
			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		});

	});
</script>
<style type="text/css">

    hr { border-top:1px solid #9C9C9C; border-bottom:1px solid #F6F6F6; }
    .col{color: red;}
   .kk { width: ;}
    .right{text-align: right; }
    .left{text-align: left;} 
    
.align-center {
	text-align: center;
}


table {
        width: 400px;
        height: 200px;
}

h1 {
	height: 100px
}
}
</style>

<!-- //end-smooth-scrolling -->
</head>
<body >
	<!-- header modal -->
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
					<a href="index.html">Electronic Store<span>Your stores.
							Your place.</span></a>
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
							data-toggle="dropdown">Products <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Mobiles</h6>
											<li><a href="products.html">Mobile Phones</a></li>
											<li><a href="products.html">Mp3 Players <span>New</span></a></li>
											<li><a href="products.html">Popular Models</a></li>
											<li><a href="products.html">All Tablets<span>New</span></a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>Accessories</h6>
											<li><a href="products1.html">Laptop</a></li>
											<li><a href="products1.html">Desktop</a></li>
											<li><a href="products1.html">Wearables <span>New</span></a></li>
											<li><a href="products1.html"><i>Summer Store</i></a></li>
										</ul>
									</div>
									<div class="col-sm-2">
										<ul class="multi-column-dropdown">
											<h6>Home</h6>
											<li><a href="products2.html">Tv</a></li>
											<li><a href="products2.html">Camera</a></li>
											<li><a href="products2.html">AC</a></li>
											<li><a href="products2.html">Grinders</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<div class="w3ls_products_pos">
											<h4>
												30%<i>Off/-</i>
											</h4>
											<img src="resources/images/1.jpg" alt=" "
												class="img-responsive" />
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>
						<li><a href="about.html">About Us</a></li>
						<li class="w3pages"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Pages <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="icons.html">Web Icons</a></li>
								<li><a href="codes.html">Short Codes</a></li>
							</ul></li>
						<li><a href="mail.html">Mail Us</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
	<!-- banner -->

	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Products</li>
			</ul>
		</div>
	</div>
	<br />
	<br />


<h1> 주문하기</h1>
<p class="right"><spen>장바구니 </spen> > <spen class="col">주문하기</spen> > <span> 결재하기 </span>  </p>
<hr/>
<p class="left">구매자 정보</p>
<table class="left" border="2px" >
<tr> <td>이름</td><td class=d></td></tr>
<tr><td>이메일</td><td class=d></td></tr>
<tr><td>휴대폰 번호</td><td class=d></td></tr>

</table>
<form action="배송지등록변경.sajo">
<table border="2px">
<p class="left">받는사람정보 <input type="submit" value="배송지 등록/변경" ></p>
<tr><td>이름</td><td></td></tr>
<tr><td>배송주소</td><td></td></tr>
<tr><td>연략처</td><td></td></tr>
<tr><td>배송요청사항</td><td></td></tr>
</table>


</form>

<form action="결제완료.sajo">
<table border="2px">
<p class="left">결제정보 </p>
<tr><td>총상품가격</td><td></td></tr>
<tr><td>배송비</td><td></td></tr>
<tr><td>총결제금액</td><td></td></tr>
<tr><td>결제방법</td><td></td></tr>
</table>
<input type="submit" value="결제하기" >

</form>
	<!-- //breadcrumbs -->
	<!-- mobiles -->


	<!-- //Related Products -->
	<!-- newsletter -->

	<!-- //newsletter -->
	<!-- footer -->
   <!-- footer -->
     <!-- footer -->
   <div class="footer">
      <div class="container">
         <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
               <h3>Contact</h3>
               <p>굿즈4조는 보다 나은 굿즈를 제공하기 위해 노력합니다.</p>
               <ul class="address">
                  <li><i class="glyphicon glyphicon-map-marker"
                     aria-hidden="true"></i>서울시 금천구 가산동 426-5 <span>대한민국</span></li>
                  <li><i class="glyphicon glyphicon-envelope"
                     aria-hidden="true"></i><a href="mailto:info@example.com">admin@goods4jo.com</a></li>
                  <li><i class="glyphicon glyphicon-earphone"
                     aria-hidden="true"></i>+82 4444 4444</li>
               </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
               <h3>Information</h3>
               <ul class="info">
                  <li><a href="about.sajo">About Us</a></li>
                  <li><a href="notice.sajo">Notice</a></li>
                  <li><a href="mail.sajo">FAQ's</a></li>
                  <li><a href="products1.sajo">Special Products</a></li>
               </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
               <h3>Category</h3>
               <ul class="info">
                  <li><a href="products1.sajo">KaKao</a></li>
                  <li><a href="">Line</a></li>
                  <li><a href="">General</a></li>
               </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
               <h3>Profile</h3>
               <ul class="info">
                  <li><a href="main.sajo">Home</a></li>
                  <li><a href="products1.sajo">Today's NEW</a></li>
               </ul>
               <h4>For Share </h4>
               <div class="agileits_social_button">
                  <ul>
                     <li><a href="http://www.facebook.com" class="facebook"> </a></li>
                     <li><a href="http://www.twitter.com" class="twitter"> </a></li>
                     <li><a href="http://www.google.com" class="google"> </a></li>
                     <li><a href="http://www.pinterest.co.kr" class="pinterest"> </a></li>
                  </ul>
               </div>
            </div>
            <div class="clearfix"></div>
         </div>
      </div>
      <div class="footer-copy">
         <div class="footer-copy1">
            <div class="footer-copy-pos">
               <a href="#home1" class="scroll"><img
                  src="resources/images/arrow.png" alt=" " class="img-responsive" /></a>
            </div>
         </div>
         <div class="container">
            <p>
               &copy; 2020 Goods Store. All rights reserved | Design by <a
                  href="http://w3layouts.com/">16me</a>
            </p>
         </div>
      </div>
   </div>

</body>
</html>