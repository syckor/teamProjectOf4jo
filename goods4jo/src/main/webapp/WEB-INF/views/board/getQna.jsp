
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page import="com.sajo.domain.MemberVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Goods4jo, All thing of goods!!!</title>
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
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('jsp,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

<!-- google fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>

<!-- files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/magnific-popup.css" rel="stylesheet">
<link href="assets/css/owl.carousel.css" rel="stylesheet">
<link href="assets/css/owl.carousel.theme.min.css" rel="stylesheet">
<link href="assets/css/ionicons.css" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">


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
	font-size: 20px;
	transition: 0.3s;
}
/* Style the tab content */
.tabcontent {
	display: none;
	background-color: #EBA823;
	padding: 6px 12px;
	color: #fff;
}

ul.tab li.current {
	background-color: #EBA823;
	color: #151515;
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
<%
	MemberVO vo = (MemberVO) session.getAttribute("member");
%>
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
		$('#myModal88').modal('show');
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
			<h2>Q&A</h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="mail.sajo"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Q&A</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- mail -->
	<div class="mail">
		<div class="container">
			<h3>우리가 답해드릴게요</h3>
			<div class="agile_mail_grids">
				<div class="col-md-12 contact-left">
					<h4>Q&A 내용</h4>
					<form
						action="deleteQna.sajo?qno=${qna.qno }&qpassword=${qna.qpassword}"
						method="post">
						<input type="hidden" name="qno" value="${qna.qno }"> <input
							type="text" name="qtitle" value="${qna.qtitle }"
							style="width: 1000px; height: 40px;" />
						<textarea name="qcontent">${qna.qcontent }</textarea>
						<input type="text" name="qpassword" placeholder="Your Password"
							required="" /> <input type="submit" value="삭제하기"
							style="width: 500px; height: 40px;">
					</form>
					<c:if test='${not empty param.msg}'>
						<script>
							alert("회원 탈퇴가 완료되었습니다.");
						</script>
					</c:if>
					<br /> <br />
					<h4>답변을 달아보아요</h4>
					<form action="answerQna.sajo?qno=${qna.qno }" method="post">
						<textarea name="qanswer" required=""> </textarea>
						<input type="submit" value="답변달기"
							style="width: 500px; height: 40px;">
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
					<br /> <br />
					<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
					<script type="text/javascript">
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
					<h4>For Share</h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="http://www.facebook.com" class="facebook">
							</a></li>
							<li><a href="http://www.twitter.com" class="twitter"> </a></li>
							<li><a href="http://www.google.com" class="google"> </a></li>
							<li><a href="http://www.pinterest.co.kr" class="pinterest">
							</a></li>
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
	<!-- Scripts -->
	<script src="resources/js/jquery-1.12.3.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/script.js"></script>


</body>
</html>