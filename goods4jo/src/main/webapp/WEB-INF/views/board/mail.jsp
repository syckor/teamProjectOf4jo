
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
<!-- //end-smooth-scrolling -->
</head>
<body>
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
											<li><a href=""><i>Summer Store</i></a></li>
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
						<li><a href="notice.sajo" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Notice</a></li>
						<li><a href="mail.sajo">Q&A</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>

	<!-- //navigation -->
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>Q&A</h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Q&A</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- mail -->
	<%String memberId = (String)session.getAttribute("memberId"); %>
	
	<div class="mail">
		<div class="container">
			<h3>우리에게 물어보세요</h3>
			<div class="agile_mail_grids">
				<div class="col-md-12 contact-left">
					<h4>Q&A 양식</h4>
					<form action="saveQna.sajo" method="post"> 
					<!-- 
						<input type="hidden" name="qno" required=""value=""> <input
							type="hidden" name="mid" required=""value=""> <input
							type="hidden" name="qanswer" required="" value="">  -->
							<input
							type="hidden" name="mId" required=""value="<%=memberId%>">
							<input 
							type="text" name="qtitle" placeholder="Your Title" required="">
						<input type="text" name="qpassword" placeholder="Your Password"
							required=""> <select type="text" name="qtype" required=""
							class="qtype" id='qtype' style="width: 380px; height: 40px;">
							<option value='상품문의'>상품문의</option>
							<option value='배송문의'>배송문의</option>
							<option value='반품/교환/환불'>반품/교환/환불</option>
							<option value='주문결제'>주문결제</option>
							<option value='회원서비스'>회원서비스</option>
							<option value='기타문의'>기타문의</option>
						</select> 
						<textarea name="qcontent" placeholder="물어보고 싶은 내용을 입력해주세요~"required="">
						</textarea>
						<input type="submit" value="보내기">
					</form>
					<br /> <br />


					<div id="container2">
						<ul class="tab">
							<li class="current" data-tab="tab1"><a href="#">상품문의</a></li>
							<li data-tab="tab2"><a href="#">배송문의</a></li>
							<li data-tab="tab3"><a href="#">반품/교환/환불</a></li>
							<li data-tab="tab4"><a href="#">주문결제</a></li>
							<li data-tab="tab5"><a href="#">회원서비스</a></li>
							<li data-tab="tab6"><a href="#">기타문의</a></li>

						</ul>

						<div id="tab1" class="tabcontent current">
							<h3>상품문의</h3>
							<p>
								상품구매는 어떻게 하나요?<br /> 구매 가능 쇼핑몰의 상품 상세 페이지 에서 옵션 및 기타 선택사항을 선택한
								후 <br /> '[장바구니]' 버튼(혹은 구매하기 버튼)을 클릭해 주세요.
							</p>
						</div>

						<div id="tab2" class="tabcontent">
							<h3>배송문의</h3>
							<p>
								배송이 지연되는 사유는 아래와 같습니다.<br /> 1) 구매자의 주문정보 입력오류: 주문 시 수령자의 연락처,
								주소를 잘못 기재한 경우<br /> 2) 판매자 배송처리 지연<br /> - 재고파악 또는 재고확보에 시일이
								걸리는 경우<br /> - 연휴 및 휴가로 인해 처리가 지연되는 경우<br /> - 판매자 실수로 인한 택배
								오발송 <br /> 3) 택배사 배송지연<br /> - 연휴로 인한 택배 물량 과다로 택배 운송이 지연되는 경우<br />
								- 배송물품의 분실, 파손으로 배송이 지연되는 경우
							</p>
						</div>

						<div id="tab3" class="tabcontent">
							<h3>반품/교환/환불</h3>
							<p>
								I반품 상품을 판매자에게 발송하였으나 환불이 지연되는 경우에는<br /> 판매자에게 직접 연락하여 반품상품 수령
								여부를 확인 후 환불승인 처리를 요청하시면 됩니다.
							</p>
						</div>

						<div id="tab4" class="tabcontent">
							<h3>주문결제</h3>
							<p>
								결제 하고 환불은 어떻게 받나요? 신용카드로 결제한 주문내역은 취소 즉시 자동으로 카드 승인취소 처리됩니다.<br />

								단, 카드사에서의 승인취소 확인은 카드사와 VAN사의 확인 절차를 거치는 관계로 주문 취소일로부터<br />
								3~5영업일 후 해당 카드사에서 취소내역을 확인하실 수 있습니다.
							</p>
						</div>
						<div id="tab5" class="tabcontent">
							<h3>회원서비스</h3>
							<p>
								재가입은 어떻게 하나요?<br /> 네이버페이 이용약관 철회 후, 30일간 재가입에 제한이 있습니다.<br />
								30일이 지난 뒤에는 네이버페이 이용약관에 동의하시면 이용하실 수 있으니 참고해 주세요.
							</p>
						</div>
						<div id="tab6" class="tabcontent">
							<h3>기타문의</h3>
							<p>
								굿즈사조는 무엇인가요?<br /> 굿즈사조는 대한민국 대표 쇼핑 서비스로 온/오프라인을 아우르는 다양한 쇼핑
								정보를<br /> 한 번에 제공하고 있습니다.<br /> 1. 세상의 모든 상품정보와 최신의 핫한 쇼핑트렌드
								정보를 알려드립니다.<br /> 백화점, 아울렛, 홍대, 가로수길 최신 상품부터 핸드메이드, 산지직송, 지역명물
								상품까지 오프라인과 온라인을<br /> 아우르는 굿즈의 모든 상품을 한 공간에서 탐색할 수 있습니다.
							</p>
						</div>

					</div>

					<script>
						$(function() {
							$('ul.tab li').click(function() {
								var activeTab = $(this).attr('data-tab');
								$('ul.tab li').removeClass('current');
								$('.tabcontent').removeClass('current');
								$(this).addClass('current');
								$('#' + activeTab).addClass('current');
							})
						});
					</script>
					<table cellspacing="0" border="1" class="cus_tb">
						<caption>Q&A 목록</caption>
						<colgroup>
							<col width="85">
							<col>
							<col width="84">
						</colgroup>
						<thead class="blind">
							<tr>
								<th scope="col">구분</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>
						<c:forEach items="${qna }" var="qna" >
						<tbody id="qnaBody">
							<tbody>
							<tr>
								<td>${qna.qtype }</td>								
								<td><a href=""
									onclick="clickcr(this, 'not*g.list', 200012883, 1, event);">${qna.qtitle }
								</a></td>
								<td>${qna.mid }</td>
								<td >${qna.qdate }</td>
								</tr>
							</tbody>
						</c:forEach>

					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- //mail -->

	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit
						esse.</p>
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker"
							aria-hidden="true"></i>1234k Avenue, 4th block, <span>New
								York City.</span></li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info">
						<li><a href="about.html">About Us</a></li>
						<li><a href="mail.html">Contact Us</a></li>
						<li><a href="codes.html">Short Codes</a></li>
						<li><a href="faq.html">FAQ's</a></li>
						<li><a href="products.html">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info">
						<li><a href="products.html">Mobiles</a></li>
						<li><a href="products1.html">Laptops</a></li>
						<li><a href="products.html">Purifiers</a></li>
						<li><a href="products1.html">Wearables</a></li>
						<li><a href="products2.html">Kitchen</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info">
						<li><a href="index.html">Home</a></li>
						<li><a href="products.html">Today's Deals</a></li>
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
					&copy; 2017 Electronic Store. All rights reserved | Design by <a
						href="http://w3layouts.com/">W3layouts</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<!-- cart-js -->
	<script src="resources/js/minicart.js"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
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
</html>