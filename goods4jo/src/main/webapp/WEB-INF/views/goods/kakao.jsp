<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sajo.domain.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	MemberVO vo = (MemberVO) session.getAttribute("member");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Goods 4JO_kakao</title>
<style type="text/css">
/* 품절임박 */
.mobile_grid_goods > span > img {
	position: absolute;
    top: 43%;
    right: 5%;
    width: 70px;
    height: 40px;
    z-index: 100;
}
/* 신상 */
.mobile_grid_new > span > img {
	position: absolute;
    top: 2%;
    right: 62%;
    width: 70px;
    height: 40px;
    z-index: 100;
}
</style>
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
<!-- font-awesome icons -->
<link href="resources/css/font-awesome.css" rel="stylesheet">
<!-- //Custom Theme files -->
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
		$(".scroll").click(function(event) {
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
	<!-- 로그아웃 상태일때 뜨는 팝업 -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog"
		aria-labelledby="myModal88" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">로그인/회원가입</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1"
							style="border-right: 1px dotted #C2C2C2; padding-right: 3em;">
							<div class="sap_tabs">
								<div id="horizontalTab"
									style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>로그인</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>회원가입</span></li>
									</ul>


									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="member/login.sajo" method="post">
													<input name="mid" placeholder="Id" type="text" required="">
													<input name="mpassword" placeholder="Password"
														type="password" required=""> <span
														id="loginResult" style="width: 150px; color: red"></span>
													<div class="sign-up">
														<input type="submit" value="로그인" id='loginto' />
													</div>

												</form>

												<c:if test='${not empty param.loginfail}'>
													<script>
														alert("가입된 회원이 아니거나 비밀번호가 틀렸습니다.");
													</script>
												</c:if>


											</div>
										</div>
									</div>
									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="member/memberInsert.sajo" method="get"
													name='frm' id='frm'>

													<input placeholder="아이디" name="mid" type="text" required=""
														id='mid'><label for="mid"></label> <span
														id="idCheckResult" style="width: 150px; color: red"></span>
													<br />
													<br /> <input placeholder="이름" name="mname" type="text"
														required="" id='mname'><label for="mname"></label>
													<input placeholder="비밀번호" name="mpassword" type="password"
														id='mpassword' required=""><label for="mpassword"></label>
													<input placeholder="비밀번호 확인" name="passconf"
														type="password" id='passconf' required=""><label
														for="passconf"></label> <input placeholder="이메일"
														name="mail" type="email" id='email' required=""><label
														for="email"></label>

													<div>
														<input type="radio" name="phone" /> SKT <input
															type="radio" name="phone" /> KT <input type="radio"
															name="phone" /> LGU+
													</div>
													<input placeholder="전화번호 (-)없이 입력" name="mtel" type="text"
														id='mtel' required=""><label for="email"></label>
													<span id="telCheckResult" style="width: 150px; color: red"></span>
													<br /> 생년월일 <select name="year" class="birth" id='year'>
														<option value="출생연도">출생연도</option>
													</select> <select name="month" class="birth" id='month'>
														<option value="월">월</option>
													</select> <select name="day" class="birth" id='day'>
														<option value="일">일</option>
													</select> <br /> 성별 <select name="gender" type="text" required=""
														class="gender">
														<option value='남자'>남자</option>
														<option value='여자'>여자</option>
													</select> <br />
													<br />
													<br /> 판매자 등록<input type="checkbox" name="seller"
														id='seller' value='seller'> <input
														placeholder="판매자명(회사이름)" name="sname" id='sname'
														type="text" required="" disabled> <br />은행선택 <select
														name="bank" type="text" required="" class="bank" id='bank'
														disabled>
														<option value='국민은행'>국민은행</option>
														<option value='우리은행'>우리은행</option>
														<option value='신한은행'>신한은행</option>
														<option value='카카오뱅크'>카카오뱅크</option>
														<option value='기업은행'>기업은행</option>
														<option value='하나은행'>하나은행</option>
														<option value='광주은행'>광주은행</option>
														<option value='부산은행'>부산은행</option>
														<option value='농협'>농협</option>
														<option value='수협'>수협</option>
														<option value='새마을금고'>새마을금고</option>
													</select> <input placeholder="계좌번호 (-)없이 입력" name="account"
														id='account' type="text" required="" disabled>
													판매자주소<br /> <input type="button" name='saddrbutton'
														id='sample4_execDaumPostcode'
														class='sample4_execDaumPostcode'
														onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
														disabled><br> <input type="text"
														name='postnumber' id="sample4_postcode" placeholder="우편번호"
														disabled> <input type="text" name='loadaddr'
														id="sample4_roadAddress" placeholder="도로명주소" disabled>
													<span id="guide" style="color: #999; display: none"></span>
													<input type="text" name='detailofaddr'
														id="sample4_detailAddress" placeholder="상세주소" disabled>

													<hr />
													<div class="stats">
														* 모든 항목에 동의해야 합니다.<br /> <input class='agree' id='agree1'
															name="agree1" type="checkbox" />Goods 4조 이용약관(필수)<br /> <input
															class='agree' id='agree2' name="agree2" type="checkbox" /><a
															href="#" id="shopContract">전자상거래 이용약관(필수)</a><br /> <input
															class='agree' id='agree3' name="agree3" type="checkbox" /><a
															href="#" id='private'>제 3자 정보제공(필수)</a><br /> <input
															class='agree' id='agree4' name="agree4" type="checkbox" />혜택성
														정보 수신 동의(선택)<br />
														<hr />
														<input class="check-all" name="agree" type="checkbox" /><span>위
															조항 모두 체크하기</span> <br />
													</div>

													<div class="sign-up">
														<input type="submit" value="회원가입완료" disabled id='msubmit' />
													</div>

												</form>
												<c:if test='${not empty param.insertsuc}'>
													<script>
														alert("가입이 완료되었습니다. 로그인 후 이용해주세요");
													</script>
												</c:if>
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
										<li class="social_behance"><a
											href="member/loginpopup.sajo" class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 로그인 상태일때 뜨는 팝업 -->
	<!-- 로그인상태가 아니면 이 창이 뜨지않게 막아준다 -->

	<%
		if (vo != null) {
	%>
	<div class="modal fade" id="myModal77" tabindex="-1" role="dialog"
		aria-labelledby="myModal77" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel1"><%=vo.getMname()%>님,
						환영합니다
					</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1"
							style="border-right: 1px dotted #C2C2C2; padding-right: 3em;">
							<div class="sap_tabs">
								<div id="horizontalTab1"
									style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><a
											href='buylist.sajo?pageno=1' id='clicktobuylist'><span
												id='buylistcss' class='buylistcss'>구매내역</span></a></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>회원정보
												수정하기</span></li>
										<%
											if (vo.getMtype().equals("판매자")) {
										%>

										<li class="resp-tab-item" aria-controls="tab_item-2"><a
											href='gregist.sajo'>판매물품 등록</a></li>
										<li class="resp-tab-item" aria-controls="tab_item-3"><a
											href='sellList.sajo'>판매물품 조회</a></li>
										<li class="resp-tab-item" aria-controls="tab_item-4"><span>사업자등록
												철회</span></li>
										<%}%>
										<li class="resp-tab-item" aria-controls="tab_item-5"><a
											href='member/logout.sajo'>로그아웃</a></li>
									</ul>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register"></div>
										</div>
									</div>

									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="member/memberModify.sajo" method="post"
													name='frmModify' id='frmModify'>
													<input placeholder="아이디" name="mid" type="text" required=""
														id='modifyid' value='<%=vo.getMid()%>' disabled>
													<input placeholder="이름" name="mname" type="text"
														required="" id='modifyname' value='<%=vo.getMname()%>'
														disabled> <input placeholder="비밀번호"
														name="mpassword" type="password" id='modifypassword'
														value=<%=vo.getMpassword()%> required=""> <input
														placeholder="비밀번호 확인" name="passconf" type="password"
														id='modifypassconf' value=<%=vo.getMpassword()%>
														required=""> <input placeholder="이메일" name="mail"
														type="email" id='modifymail' value='<%=vo.getMail()%>'
														required="">
													<div id='telbrand'>
														<input type="radio" name="phone" /> SKT <input
															type="radio" name="phone" /> KT <input type="radio"
															name="phone" /> LGU+
													</div>
													<input placeholder="전화번호 (-)없이 입력" name="mtel" type="text"
														id='modifytel' value='<%=vo.getMtel()%>' required="">
													<br />
													<div id='sellerbutton'>
														<%
															if (vo.getMtype().equals("소비자")) {
														%>
														<div>판매자 등록하기</div>
														<input type="checkbox" name="addseller" id='addseller'>
														<%}%>
													</div>
													<div id='sellerfrm' style="display: none;">
														<input placeholder="판매자명(회사이름)" name="sname" id='sname1'
															type="text"> <br />은행선택 <select name="bank"
															type="text" class="bank" id='bank1'>
															<option value='국민은행'>국민은행</option>
															<option value='우리은행'>우리은행</option>
															<option value='신한은행'>신한은행</option>
															<option value='카카오뱅크'>카카오뱅크</option>
															<option value='기업은행'>기업은행</option>
															<option value='하나은행'>하나은행</option>
															<option value='광주은행'>광주은행</option>
															<option value='부산은행'>부산은행</option>
															<option value='농협'>농협</option>
															<option value='수협'>수협</option>
															<option value='새마을금고'>새마을금고</option>
														</select> <input placeholder="계좌번호 (-)없이 입력" name="account"
															id='account1' type="text"> 판매자주소<br /> <input
															type="button" name='saddrbutton'
															id='sample4_execDaumPostcode1'
															class='sample4_execDaumPostcode'
															onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
														<input type="text" name='postnumber'
															id="sample4_postcode1" class='sample4_postcode'
															placeholder="우편번호"> <input type="text"
															name='loadaddr' id="sample4_roadAddress1"
															class='sample4_roadAddress' placeholder="도로명주소">
														<span id="guide" style="color: #999; display: none"></span>
														<input type="text" name='detailofaddr'
															id="sample4_detailAddress1" class='sample4_detailAddress'
															placeholder="상세주소">
													</div>
													<br /> <br />
													<div class="modify" id='hiddenbybutton'>
														<input type="submit" value="정보수정하기" id='mmodify' /> <input
															type="button" value="회원탈퇴" id='dropoutmember' /> <br />
													</div>
												</form>

												<c:if test='${not empty param.insertsuc}'>
													<script>
														alert("회원정보가 수정되었습니다.");
													</script>
												</c:if>

												<form action='member/deleteMember.sajo' name='deleteMember'
													id='mdelete'>
													<span id="idAttach"></span>
												</form>
												<c:if test='${not empty param.mdelete}'>
													<script>
														alert("회원 탈퇴가 완료되었습니다.");
													</script>
												</c:if>

											</div>
										</div>
									</div>

									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-2">
										<div class="facts">
											<div class="register"></div>
										</div>
									</div>

									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-3">
										<div class="facts">
											<div class="register"></div>
										</div>
									</div>



									<div class="tab-2 resp-tab-content"
										aria-labelledby="tab_item-4">
										<div class="facts">
											<div class="register">
												<form action="member/checkPass.sajo" method="post"
													name='frmdropseller' id='frmdropseller'>
													비밀번호를 입력하세요<br /> <input type='hidden' name='mid'
														value='<%=vo.getMid()%>'></input> <input type='password'
														name='checkpassword' id='checkpassword'></input> <input
														type="submit" value="확인" id='checkPass' />
												</form>

												<c:if test='${not empty param.sdelete}'>
													<script>
														alert("셀러회원 탈퇴가 완료되었습니다. \n일반회원으로만 활동 가능합니다.");
													</script>
												</c:if>

											</div>
										</div>
									</div>


								</div>
							</div>
							<script src="resources/js/easyResponsiveTabs.js"
								type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function() {
									$('#horizontalTab1').easyResponsiveTabs({
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
	<%
		}
	%>

	<script>
	<!--여기서 이거 쓰기 싫었는데 js파일안에서 세션 가져오는거 아무리 찾아도 안나와서 어쩔수없이 여기다함 ㅜ ㅋ  -->
		
	<%//vo가 null이면 로그인화면 띄우고 null이 아니면 로그인이 있다는 얘기임    
if (vo == null) {%>
		$('#myModal88').modal('hide');
	<%} else {%>
		$('#myModal88').modal('hide');
	<%}%>
		
	</script>
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login">
				<%
					if (vo == null) {
				%>
				<a href="#" data-toggle="modal" data-target="#myModal88"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
				<%
					} else {
				%>
				<a href="#" data-toggle="modal" data-target="#myModal77"><span
					class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
				<%}%>
			</div>
			<div class="w3l_logo">
				<h1>
					<a href="member/main.sajo">Goods 4jo<span>All of goods,
							in this world!</span></a>
				</h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box"> <label
					class="icon-search" for="search_box"><span
					class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="search.sajo" method="post">
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
						<li><a href="main.sajo">Home</a></li>
						<!-- Mega Menu -->
						<li class="dropdown"><a href="products.sajo"
							class="dropdown-toggle act" data-toggle="dropdown">Goods <b
								class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>
												<a href="kakao.sajo">Kakao</a>
											</h6>
											<li><a href="products.sajo">라이언</a></li>
											<li><a href="products.sajo">어피치<span>New</span></a></li>
											<li><a href="products.sajo">무지</li>
											<li><a href="products.sajo">프로도</li>
											<li><a href="products.sajo">네오<span>New</span></a></li>
											<li><a href="products.sajo">튜브</li>
											<li><a href="products.sajo">제이지</li>
											<li><a href="products.sajo">콘</li>
										</ul>
									</div>
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>
												<a href="line.sajo">Line</a>
											</h6>
											<li><a href="products.sajo">브라운&프렌즈</a></li>
											<li><a href="products.sajo">BT21</a></li>
											<li><a href="products.sajo">브롤스타즈 <span>New</span></a></li>
											<!-- 								<li><a href="gregist.sajo"><i>상품 등록</i></a></li> -->
										</ul>
									</div>
									<div class="col-sm-2">
										<ul class="multi-column-dropdown">
											<h6>
												<a href="general.sajo">General</a>
											</h6>
											<li><a href="products.sajo">인형</a></li>
											<li><a href="products.sajo">생필품</a></li>
											<li><a href="products.sajo">의류</a></li>
											<li><a href="products.sajo">그 외</a></li>
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
						<li><a href="about.sajo">About Us</a></li>
						<li><a href="notice.sajo">Notice</a></li>
						<li><a href="mail.sajo" id='qna'>Q&A</a></li>

					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!--    navigation 끝 -->
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>Goods</h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="main.sajo"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>KAKAO</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- mobiles -->
	<div class="mobiles">
		<div class="container">
			<!-- 왼쪽 구역-->
			<div class="col-md-4 w3ls_mobiles_grid_left">
				<!-- 왼쪽 상단 캐릭터 카테고리 -->
				<div class="w3ls_mobiles_grid_left_grid">
					<h3>Categories</h3>
					<div class="w3ls_mobiles_grid_left_grid_sub">
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title asd">
										<a class="pa_italic" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseOne"
											aria-expanded="false" aria-controls="collapseOne"> <span
											class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
											class="glyphicon glyphicon-minus" aria-hidden="true"></i>Kakao
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body panel_text">
										<ul>
											<li><a href="products.sajo">라이언</a></li>
											<li><a href="products.sajo">어피치</a></li>
											<li><a href="products.sajo">무지</a></li>
											<li><a href="products.sajo">프로도</a></li>
											<li><a href="products.sajo">네오</a></li>
											<li><a href="products.sajo">튜브</a></li>
											<li><a href="products.sajo">제이지</a></li>
											<li><a href="products.sajo">콘</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title asd">
										<a class="pa_italic collapsed" role="button"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapseTwo" aria-expanded="false"
											aria-controls="collapseTwo"> <span
											class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
											class="glyphicon glyphicon-minus" aria-hidden="true"></i>Line
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body panel_text">
										<ul>
											<li><a href="products.sajo">브라운&프렌즈</a></li>
											<li><a href="products.sajo">BT21</a></li>
											<li><a href="products.sajo">브롤스타즈</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!--  -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title asd">
										<a class="pa_italic collapsed" role="button"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapseThree" aria-expanded="false"
											aria-controls="collapseThree"> <span
											class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
											class="glyphicon glyphicon-minus" aria-hidden="true"></i>General
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body panel_text">
										<ul>
											<li><a href="#">생필품</a></li>
											<li><a href="#">의류</a></li>
											<li><a href="#">그 외</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 왼쪽 하단 가격 카테고리 -->
				<div class="w3ls_mobiles_grid_left_grid">
					<h3>Price</h3>
					<div class="w3ls_mobiles_grid_left_grid_sub">
						<div class="ecommerce_color ecommerce_size">
							<ul>
								<li><a href="#">10,000 이하</a></li>
								<li><a href="#">10,000~20,000</a></li>
								<li><a href="#">20,000이상</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- 끝 왼쪽 카테고리-->
			<!-- 오른쪽 구역-->
			<div class="col-md-8 w3ls_mobiles_grid_right">
				<!-- 오른쪽 상단 배너 -->
				<div class="w3ls_mobiles_grid_righ_grid">
					<img src="resources/images/pinkbanner.jpg" alt=" "
						class="img-responsive" />
					<div class="clearfix"></div>
				</div>
				<!-- 오른쪽 하단 제품 -->
				<div class="w3ls_mobiles_grid_right_grid2">
					<!-- 오른쪽 하단 정렬기준태그 -->
					<div class="w3ls_mobiles_grid_right_grid2_right" align="right">
						<a href='kakao.sajo?orderby=gdate'>최신순|</a> <a
							href="kakao.sajo?orderby=rcnt">리뷰많은순|</a> <a
							href="kakao.sajo?orderby=price">가격낮은순|</a> <a
							href="kakao.sajo?orderby=highprice">가격높은순</a><br />
					</div>

				</div>
				<div class="clearfix"></div>
				<!-- 오른쪽 하단 제품 6개 -->
				<div class="w3ls_mobiles_grid_right_grid3">
					<c:forEach items="${list }" var="goods">
						<!-- 제품 1개씩 반복 -->
						<div
							class="col-md-6 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
							<div class="agile_ecommerce_tab_left mobiles_grid">
								<c:if test="${empty goods.FNAME1 }">
									<a><img src="${goods.SOURCE1 }" alt="" width="300px"
										height="300px"></a>
								</c:if>
								<c:if test="${empty goods.SOURCE1 }">
									<a><img src="resources/upload/${goods.FNAME1 }" alt=""
										width="300px" height="300px"></a>
								</c:if>
								<h5>
									<a href="detailGoods.sajo?gid=${goods.GID }">${goods.GNAME}</a>
								</h5>
								<div class="simpleCart_shelfItem">
									<p>
										<i class="item_price">${goods.PRICE }원</i>
									</p>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" /> <input
											type="hidden" name="add" value="1" /> <input type="hidden"
											name="w3ls_item" value="${goods.GNAME }" /> <input
											type="hidden" name="amount" value="${goods.PRICE}" />
										<c:if test="${goods.COUNT gt 0 }" >
										<button type="submit" class="w3ls-cart" align="bottom">장바구니담기</button>
											</c:if>
									</form>
									<br />
								</div>
								<c:if test="${goods.COUNT le 10}">
							<div class="mobile_grid_goods" >
									<span><img  src="resources/images/majin.jpg"/></span>
								</div>
								</c:if>
								<!-- new -->
									<fmt:formatDate value="${currTime}" var="now" pattern="yyyy-MM-dd"/> <br>
								<!-- 날짜 계산  -->
								<fmt:parseDate var="goods_date" value="${goods.GDATE }" pattern="yyyy-MM-dd"/>
								
								<fmt:parseNumber var="now_N" value="${date.time/(1000*60*60*24) }" integerOnly="true"/>
								<fmt:parseNumber var="goods_date_N" value="${goods_date.time/(1000*60*60*24) }" integerOnly="true"/>
									
									<c:if test="${(not_N-goods_date_N) le 2 }">
								<div class="mobile_grid_new" >
									<span><img  src="resources/images/new.jpg"/></span>
								</div>
								</c:if>
								<!-- new끝 -->
							</div>
						</div>
					</c:forEach>

				</div>
				<div class="clearfix"></div>
				<!--페이징 부분 -->
				<div class="page" id="page" align="center">
					<c:forEach var="i" begin="1" end="${total }">
						<a href="kakao.sajo?pNum=${i }">[${i }]</a>
					</c:forEach>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- 끝 오른쪽 구역-->
		</div>
	</div>

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
                     aria-hidden="true"></i><a href="mailto:admin@goods4jo.com">admin@goods4jo.com</a></li>
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
                  <li><a href="kakao.sajo">KaKao</a></li>
                  <li><a href="line.sajo">Line</a></li>
                  <li><a href="general.sajo">General</a></li>
               </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
               <h3>Profile</h3>
               <ul class="info">
                  <li><a href="main.sajo">Home</a></li>
                  <li><a href="products.sajo">Today's NEW</a></li>
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