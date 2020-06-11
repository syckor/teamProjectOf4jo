<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.sajo.domain.MemberVO" %>
<%MemberVO vo = (MemberVO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goods RegistSave</title>
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
</head>
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
						<input type="text" name="keyword" placeholder="Search...">
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
				<li>Goods Regist</li>
			</ul>
		</div>
	</div>
	<div><br/><br/>
	<div class="container">
		<form class='register' id="gregist" action="products1.sajo" method='post'>
			<table class='table'>
			<tr><td><h2>상품 기본 정보</h2></td></tr>
			<tr><td>상품명</td><td>${goods.gname }</td></tr>
			<tr><td>상품가격</td><td>${goods.price }</td></tr>
			<tr><td>재고수량</td><td>${goods.count }</td></tr>
			<tr><td>택배사</td><td>${goods.delivery }</td></tr>
			<tr><td>택배비용</td><td>${goods.dcost }</td></tr>
			<tr><td>배송예상시간</td><td>${goods.dtime }</td></tr>
			<tr><td>상품상세정보</td><td>${goods.detail }</td></tr>
			<br/>
			<tr><td><h2>옵션</h2></td></tr>
			<tr><td>옵션1</td><td>${goods.option1 }</td></tr>
			<tr><td>옵션2</td><td>${goods.option2 }</td></tr>
		
			<tr><td><h2>이미지</h2></td></tr>
			<tr><td>이미지 파일1</td><td> <c:choose>
					    <c:when test=${img.fsize1 eq 0}>첨부파일 없음</c:when>
					    <c:otherwise>
					    <a href='resources/upload/${img.fname1}'>
					    		<img src="resources/upload/${img.fname1}">
					    	</a> 
					    </c:otherwise>
					 </c:choose>	</td></tr>
			<tr><td>이미지 파일2</td><td><c:choose>
					    <c:when test=${img.fsize2 eq 0}>첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname2}">
					    </c:otherwise>
					 </c:choose></td></tr>
			<tr><td>이미지 파일3</td><td><c:choose>
					    <c:when test=${img.fsize3 eq 0}>첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname3}">
					    </c:otherwise>
					 </c:choose></td></tr>
			<tr><td>이미지 파일4</td><td><c:choose>
					    <c:when test=${img.fsize4 eq 0}>첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname4}">
					    </c:otherwise>
					 </c:choose></td></tr>
			<tr><td>이미지 파일5</td><td><c:choose>
					    <c:when test=${img.fsize5 eq 0}>첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src="resources/upload/${img.fname5}">
					    </c:otherwise>
					 </c:choose></tr><br/>
			<tr><td><h2>이미지 소스 저장</h2></td></tr>
			<tr><td>이미지 소스1</td><td>
						<img src=${img.source1}>			  
					</td></tr>
			<tr><td>이미지 소스2</td><td><img src=${img.source2}></td></tr>
			<tr><td>이미지 소스3</td><td><img src=${img.source3}></td></tr>
			<tr><td>이미지 소스4</td><td><img src=${img.source4}></td></tr>
			<tr><td>이미지 소스5</td><td><img src=${img.source5}></td></tr>
			</table>
			<div class="team-bottom">
			<input type="submit"
				class="submit" value="상품 홈" /></div>
			</form>
		</div>
	</div>

</body>
</html>