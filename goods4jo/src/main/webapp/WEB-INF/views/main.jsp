<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE jsp> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sajo.domain.MemberVO" %>
<jsp lang="en">    
<head>  
<title>Goods4jo, All thing of goods!!!</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->   
<!-- font-awesome icons --> 
<link href="resources/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js --> 
<script src="resources/js/jquery.min.js"></script>  
<script src='resources/js/member.js' type="text/javascript"></script>

<script src='resources/js/jquery.validate.min.js' type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<link rel="stylesheet" href="resources/css/jquery.countdown.css" /> <!-- countdown --> 
<!-- //js -->   
<!-- web fonts -->  
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web fonts -->  
<!-- start-smooth-scrolling -->
<!-- post검색  -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"> 
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('jsp,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	
	});

</script>
<!-- //end-smooth-scrolling --> 
</head> 
<body>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header modal -->	
	<!-- 로그아웃 상태일때 뜨는 팝업 -->
	<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
						<h4 class="modal-title" id="myModalLabel">로그인/회원가입</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">	
								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>로그인</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>회원가입</span></li>									
									</ul>		
									
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												<form action="member/login.sajo" method="post">			
													<input name="mid" placeholder="Id" type="text" required="">						
													<input name="mpassword" placeholder="Password" type="password" required="">										
													<div class="sign-up"> 
	 													<input type="submit" value="로그인"/>
													</div>
												</form>
											</div> 
										</div> 
									</div>
								<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="member/memberInsert.sajo" method="get" name='frm' id='frm'>
										  		 
													<input placeholder="아이디" name="mid" type="text" required="" id='mid'><label for="mid"></label>
													<span id="idCheckResult" style="width:150px;color:red"></span>
													<br/><br/> 														
													<input placeholder="이름" name="mname" type="text" required="" id='mname'><label for="mname"></label>
													<input placeholder="비밀번호" name="mpassword" type="password" id='mpassword' required=""><label for="mpassword"></label>	
													<input placeholder="비밀번호 확인" name="passconf" type="password" id='passconf' required=""><label for="passconf"></label>													
													<input placeholder="이메일" name="mail" type="email" id='email' required=""><label for="email"></label>
													
													<div>
											 			<input type = "radio" name = "phone"/> SKT
   														<input type = "radio" name = "phone"/> KT 
   														<input type = "radio" name = "phone"/> LGU+
   													</div>												
													<input placeholder="전화번호 (-)없이 입력" name="mtel" type="text" id='mtel' required="" ><label for="email"></label>
													<span id="telCheckResult" style="width:150px;color:red"></span>
													<br/>
													생년월일 
													<select name="year" class="birth" id='year'> 
														<option value="출생연도">출생연도</option>																										
													</select>
													<select name="month" class="birth" id='month'>	
														<option value="월">월</option>	
													</select>																
													<select name="day" class="birth" id='day'>
														<option value="일">일</option>  
													</select>	 	
													<br/>
													성별
													<select  name="gender" type="text" required="" class="gender">
														<option value='남자'>남자</option>
														<option value='여자'>여자</option>
													</select>
													<br/><br/><br/>
												 	판매자 등록<input type="checkbox" name="seller" id='seller' value='seller'> 
													<input placeholder="판매자명(회사이름)" name="sname" id='sname' type="text" required="" disabled>
													<br/>은행선택   
													<select  name="bank" type="text" required="" class="bank" id='bank' disabled >
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
													</select>
													<input placeholder="계좌번호 (-)없이 입력" name="account" id='account' type="text" required="" disabled >
													판매자주소<br/>
													<input type="button" name='saddrbutton' id = 'sample4_execDaumPostcode' onclick="sample4_execDaumPostcode()" value="우편번호 찾기" disabled ><br>
													 <input type="text" name='postnumber' id="sample4_postcode" placeholder="우편번호" disabled >
													<input type="text" name='loadaddr' id="sample4_roadAddress" placeholder="도로명주소"  disabled>
													<span id="guide" style="color:#999;display:none"></span> 
													<input type="text" name='detailofaddr' id="sample4_detailAddress" placeholder="상세주소"  disabled>
													 
													<hr/>
													<div class="stats">
											       		* 모든 항목에 동의해야 합니다.<br/>
											          <input class='agree' id='agree1' name="agree1" type="checkbox"/>Goods 4조 이용약관(필수)<br/>
											          <input class='agree' id='agree2' name="agree2" type="checkbox"/><a href="#" id="shopContract">전자상거래 이용약관(필수)</a><br/>
											          <input class='agree' id='agree3' name="agree3" type="checkbox"/><a href="#" id='private'>제 3자 정보제공(필수)</a><br/>  
											          <input class='agree' id='agree4' name="agree4" type="checkbox"/>혜택성 정보 수신 동의(선택)<br />   
											          <hr/> 
											          <input class="check-all" name="agree" type="checkbox" /><span>위 조항 모두 체크하기</span>  
											          <br/>				
											        </div>  
																								
													<div class="sign-up"> 
														<input type="submit" value="회원가입완료" disabled id='msubmit'/>  
													</div> 
												</form>
											</div>
										</div>
									</div> 	
								
										        					            	      
								</div>	
							</div>
							<script src="resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function () {
									$('#horizontalTab').easyResponsiveTabs({
										type: 'default', //Types: default, vertical, accordion           
										width: 'auto', //auto or any width like 600px
										fit: true   // 100% fit in a container
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
										<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="member/loginpopup.sajo" class="entypo-behance"></a></li>
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
	<%MemberVO vo = (MemberVO)session.getAttribute("member"); %>
	<%if(vo!=null){ %>
 	<div class="modal fade" id="myModal77" tabindex="-1" role="dialog" aria-labelledby="myModal77"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;</button>
						<h4 class="modal-title" id="myModalLabel1"><%=vo.getMname()%>님, 환영합니다</h4>
				</div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">	
								<div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0"><span>구매내역</span></li>
										<li class="resp-tab-item" aria-controls="tab_item-1"><span>회원정보 수정하기</span></li>
										<%if(vo.getMtype().equals("판매자")){%> 
											<li class="resp-tab-item" aria-controls="tab_item-2"><span>판매물품 등록</span></li>
											<li class="resp-tab-item" aria-controls="tab_item-3"><span>사업자등록 철회</span></li>
										<%}%>  
										<li class="resp-tab-item" aria-controls="tab_item-4"><a href='member/logout.sajo'>로그아웃</a></li>									
									</ul>		
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="register">
												
											</div>
										</div>
									</div> 	
									
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form action="member/memberModify.sajo" method="post" name='frmModify' id='frmModify'>										  		
													<input placeholder="아이디" name="mid" type="text" required="" id='modifyid' value='<%=vo.getMid() %>' disabled>											
													<input placeholder="이름" name="mname" type="text" required="" id='modifyname' value='<%=vo.getMname()%>' disabled>
													<input placeholder="비밀번호" name="mpassword" type="password" id='modifypassword' required="">
													<input placeholder="비밀번호 확인" name="passconf" type="password" id='modifypassconf' required="">												
													<input placeholder="이메일" name="mail" type="email" id='modifymail' value='<%=vo.getMail()%>' required="">									
													<div id='telbrand'>
											 			<input type = "radio" name = "phone"/> SKT 
   														<input type = "radio" name = "phone"/> KT 
   														<input type = "radio" name = "phone"/> LGU+
   													</div>												
													<input placeholder="전화번호 (-)없이 입력" name="mtel" type="text" id='modifytel' value='<%=vo.getMtel()%>' required="" >													
													<br/>
													
													판매자 등록하기<input type="checkbox" name="addseller" id='addseller' value='addseller'>
													<div id='sellerfrm' style="display: none;"> 
														<input placeholder="판매자명(회사이름)" name="sname" id='sname1' type="text" required="">
														<br/>은행선택   
														<select  name="bank" type="text" class="bank" required='' id='bank1'>
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
														</select>
														<input placeholder="계좌번호 (-)없이 입력" name="account" id='account1' type="text" required="">
														판매자주소<br/> 
														<input type="button" name='saddrbutton' id = 'sample4_execDaumPostcode' onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
														 <input type="text" name='postnumber' id="sample4_postcode" placeholder="우편번호">
														<input type="text" name='loadaddr' id="sample4_roadAddress" placeholder="도로명주소">
														<span id="guide" style="color:#999;display:none"></span> 
														<input type="text" name='detailofaddr' id="sample4_detailAddress" placeholder="상세주소">
													</div>
													<br/>
													<br/> 
													<input type="button" value="회원탈퇴" id='dropoutmember'/>
																	 				 	 																	
													<div class="modify" id='hiddenbybutton'>  
														<input type="submit" value="정보수정하기" id='modifysubmit'/>  
													</div> 		
												</form>
												<form action='member/deleteMember.sajo' name='deleteMember'>
													<span id="idAttach"></span>   
												</form>
											</div> 
										</div> 
									</div>
									
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-2">
										<div class="facts">
											<div class="register">
												 
											</div>
										</div>
									</div> 
									
										
									 
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-3">
										<div class="facts">
											<div class="register">
												<form action="member/checkPass.sajo" method="post" name='frmdropseller' id='frmdropseller'>
													비밀번호를 입력하세요<br/> 
														<input type='hidden' name='mid' value='<%=vo.getMid()%>'></input>
														<input type='password' name='checkpassword' id='checkpassword'></input>
														<input type="submit" value="확인" id='checkPass'/>
													</form>  
											</div> 
										</div>
									</div> 	
								
										        					            	      
								</div>	
							</div>
							<script src="resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function () {
									$('#horizontalTab1').easyResponsiveTabs({
										type: 'default', //Types: default, vertical, accordion           
										width: 'auto', //auto or any width like 600px
										fit: true   // 100% fit in a container
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
										<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#" class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%} %>
 	
	<script>
		<!--여기서 이거 쓰기 싫었는데 js파일안에서 세션 가져오는거 아무리 찾아도 안나와서 어쩔수없이 여기다함 ㅜ ㅋ  -->
		<% 	//vo가 null이면 로그인화면 띄우고 null이 아니면 로그인이 있다는 얘기임 	
			if(vo==null){%>
				$('#myModal88').modal('show');
			<%}else{%>
				$('#myModal88').modal('hide');
			<%}%> 
		   
	</script>  
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login">
				<%if(vo==null){ %> 
					<a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
				<%}else{ %>
					<a href="#" data-toggle="modal" data-target="#myModal77"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>				
				<%}%>
			</div>
			<div class="w3l_logo">
				<h1><a href="index.jsp">Goods 4jo<span>All of goods, in this world!</span></a></h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box">
				<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Search...">
						<input type="submit" value="Send">
					</form>
				</div>
			</div>
			<div class="cart cart box_1"> 
				<form action="#" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart" />
					<input type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
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
               <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
               </button>
            </div> 
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
               <ul class="nav navbar-nav">
                  <li><a href="index.html">Home</a></li>   
                  <!-- Mega Menu -->
                  <li class="dropdown">
                     <a href="products1.sajo" class="dropdown-toggle act" data-toggle="dropdown" >Goods <b class="caret"></b></a>
                     <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                           <div class="col-sm-3">
                              <ul class="multi-column-dropdown">
                                 <h6>Kakao</h6>
                                 <li><a href="products1.sajo">라이언</a></li>
                                 <li><a href="products1.sajo">어피치<span>New</span></a></li> 
                                 <li><a href="products1.sajo">무지</li>
                                 <li><a href="products1.sajo">프로도</li>
                                 <li><a href="products1.sajo">네오<span>New</span></a></li>
                                 <li><a href="products1.sajo">튜브</li>
                                 <li><a href="products1.sajo">제이지</li>
                                 <li><a href="products1.sajo">콘</li>
                              </ul>
                           </div>
                           <div class="col-sm-3">
                              <ul class="multi-column-dropdown">
                                 <h6>Line</h6>
                                 <li><a href="products1.sajo">브라운&프렌즈</a></li>
                                 <li><a href="products1.sajo">BT21</a></li>
                                 <li><a href="">브롤스타즈 <span>New</span></a></li>
								<li><a href="gregist.sajo"><i>상품 등록</i></a></li>
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
                                 <img src="resources/images/inCate1.jpg" alt=" " class="img-responsive" />
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
	<div class="banner">
	
	</div> 
	<!-- //banner --> 
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-5 wthree_banner_bottom_left">
				<div class="video-img">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
						<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
					</a>
				</div> 
					<!-- pop-up-box -->     
					<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box -->
					<div id="small-dialog" class="mfp-hide">
						<iframe src="https://www.youtube.com/watch?v=PdtRWL6SRzE"></iframe>
					</div>  
					<script>  
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
					</script>
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">Mobiles</a></li>
						<li role="presentation"><a href="#audio" role="tab" id="audio-tab" data-toggle="tab" aria-controls="audio">Audio</a></li>
						<li role="presentation"><a href="#video" role="tab" id="video-tab" data-toggle="tab" aria-controls="video">Computer</a></li>
						<li role="presentation"><a href="#tv" role="tab" id="tv-tab" data-toggle="tab" aria-controls="tv">Household</a></li>
						<li role="presentation"><a href="#kitchen" role="tab" id="kitchen-tab" data-toggle="tab" aria-controls="kitchen">Kitchen</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/3.jpg" alt=" " class="img-responsive" />
										<img src="images/4.jpg" alt=" " class="img-responsive" />
										<img src="images/5.jpg" alt=" " class="img-responsive" />
										<img src="images/6.jpg" alt=" " class="img-responsive" />
										<img src="images/7.jpg" alt=" " class="img-responsive" />
										<img src="images/3.jpg" alt=" " class="img-responsive" />
										<img src="images/4.jpg" alt=" " class="img-responsive" />
										<img src="images/5.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div> 
									<h5><a href="single.jsp">Mobile Phone1</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$380</span> <i class="item_price">$350</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Mobile Phone1" /> 
											<input type="hidden" name="amount" value="350.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>  
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/4.jpg" alt=" " class="img-responsive" />
										<img src="images/5.jpg" alt=" " class="img-responsive" />
										<img src="images/6.jpg" alt=" " class="img-responsive" />
										<img src="images/7.jpg" alt=" " class="img-responsive" />
										<img src="images/3.jpg" alt=" " class="img-responsive" />
										<img src="images/4.jpg" alt=" " class="img-responsive" />
										<img src="images/5.jpg" alt=" " class="img-responsive" />
										<img src="images/6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Mobile Phone2</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$330</span> <i class="item_price">$302</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Mobile Phone2" /> 
											<input type="hidden" name="amount" value="302.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/7.jpg" alt=" " class="img-responsive" />
										<img src="images/6.jpg" alt=" " class="img-responsive" />
										<img src="images/4.jpg" alt=" " class="img-responsive" />
										<img src="images/3.jpg" alt=" " class="img-responsive" />
										<img src="images/5.jpg" alt=" " class="img-responsive" />
										<img src="images/7.jpg" alt=" " class="img-responsive" />
										<img src="images/4.jpg" alt=" " class="img-responsive" />
										<img src="images/6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Mobile Phone3</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$250</span> <i class="item_price">$245</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Mobile Phone3" /> 
											<input type="hidden" name="amount" value="245.00"/>   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="audio" aria-labelledby="audio-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/8.jpg" alt=" " class="img-responsive" />
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<img src="images/10.jpg" alt=" " class="img-responsive" />
										<img src="images/8.jpg" alt=" " class="img-responsive" />
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<img src="images/10.jpg" alt=" " class="img-responsive" />
										<img src="images/8.jpg" alt=" " class="img-responsive" />
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Speakers</a></h5>
										<p><span>$320</span> <i class="item_price">$250</i></p>
									<div class="simpleCart_shelfItem">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Speakers" /> 
											<input type="hidden" name="amount" value="250.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<img src="images/8.jpg" alt=" " class="img-responsive" />
										<img src="images/10.jpg" alt=" " class="img-responsive" />
										<img src="images/8.jpg" alt=" " class="img-responsive" />
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<img src="images/10.jpg" alt=" " class="img-responsive" />
										<img src="images/8.jpg" alt=" " class="img-responsive" />
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Headphones</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$180</span> <i class="item_price">$150</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Headphones" /> 
											<input type="hidden" name="amount" value="150.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/10.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/8.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/9.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/8.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/9.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/10.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/8.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/9.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Audio Player</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$220</span> <i class="item_price">$180</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Audio Player" /> 
											<input type="hidden" name="amount" value="180.00"/>   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="video" aria-labelledby="video-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/13.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/13.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Laptop</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$880</span> <i class="item_price">$850</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Laptop" /> 
											<input type="hidden" name="amount" value="850.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/13.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/13.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Notebook</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$290</span> <i class="item_price">$280</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Notebook" /> 
											<input type="hidden" name="amount" value="280.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/13.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/13.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Kid's Toy</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$120</span> <i class="item_price">$80</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Kid's Toy" /> 
											<input type="hidden" name="amount" value="80.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tv" aria-labelledby="tv-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/16.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/16.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Refrigerator</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$950</span> <i class="item_price">$820</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Refrigerator" /> 
											<input type="hidden" name="amount" value="820.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/16.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/16.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">LED Tv</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$700</span> <i class="item_price">$680</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="LED Tv"/> 
											<input type="hidden" name="amount" value="680.00"/>   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/16.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/16.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Washing Machine</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$520</span> <i class="item_price">$510</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Washing Machine" /> 
											<input type="hidden" name="amount" value="510.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="kitchen" aria-labelledby="kitchen-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/19.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/19.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Grinder</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$460</span> <i class="item_price">$450</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Grinder" /> 
											<input type="hidden" name="amount" value="450.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/19.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/19.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Water Purifier</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$390</span> <i class="item_price">$350</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Water Purifier" /> 
											<input type="hidden" name="amount" value="350.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="resources/images/19.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/19.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
										<img src="resources/images/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.jsp">Coffee Maker</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$250</span> <i class="item_price">$220</i></p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Coffee Maker" /> 
											<input type="hidden" name="amount" value="220.00" />   
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom --> 
	<!-- modal-video -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/images/3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>The Best Mobile Phone 3GB</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
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
								<p><span>$380</span> <i class="item_price">$350</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
									<input type="hidden" name="amount" value="350.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/images/9.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Multimedia Home Accessories</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
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
								<p><span>$180</span> <i class="item_price">$150</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Headphones"> 
									<input type="hidden" name="amount" value="150.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/images/11.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Quad Core Colorful Laptop</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia  deserunt.</p>
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
									<img src="resources/images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="resources/images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$880</span> <i class="item_price">$850</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Laptop"> 
									<input type="hidden" name="amount" value="850.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/images/14.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Cool Single Door Refrigerator </h4>
							<p>Duis aute irure dolor inreprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
								<p><span>$950</span> <i class="item_price">$820</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
									<input type="hidden" name="amount" value="820.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/images/17.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>New Model Mixer Grinder</h4>
							<p>Excepteur sint occaecat laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
								<p><span>$460</span> <i class="item_price">$450</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
									<input type="hidden" name="amount" value="450.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="resources/images/36.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Dry Vacuum Cleaner</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
								<p><span>$960</span> <i class="item_price">$920</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Vacuum Cleaner"> 
									<input type="hidden" name="amount" value="920.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/37.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>Kitchen & Dining Accessories</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$280</span> <i class="item_price">$250</i></p>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart">
									<input type="hidden" name="add" value="1"> 
									<input type="hidden" name="w3ls_item" value="Induction Stove"> 
									<input type="hidden" name="amount" value="250.00">   
									<button type="submit" class="w3ls-cart">Add to cart</button>
								</form>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span></a></li>
									<li><a href="#" class="brown"><span></span></a></li>
									<li><a href="#" class="purple"><span></span></a></li>
									<li><a href="#" class="gray"><span></span></a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //modal-video -->
	<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left">
				<h3>Grand Opening Event With flat<span>20% <i>Discount</i></span></h3>
				<a href="products.jsp">Shop Now</a>
			</div>
			<div class="col-md-5 agileinfo_banner_bottom1_grid_right">
				<h4>hot deal</h4>
				<div class="timer_wrap">
					<div id="counter"> </div>
				</div>
				<script src="resources/js/jquery.countdown.js"></script>
				<script src="resources/js/script.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //banner-bottom1 --> 
	<!-- special-deals -->
	<div class="special-deals">
		<div class="container">
			<h2>Special Deals</h2>
			<div class="w3agile_special_deals_grids">
				<div class="col-md-7 w3agile_special_deals_grid_left">
					<div class="w3agile_special_deals_grid_left_grid">
						<img src="resources/images/21.jpg" alt=" " class="img-responsive" />
						<div class="w3agile_special_deals_grid_left_grid_pos1">
							<h5>30%<span>Off/-</span></h5>
						</div>
						<div class="w3agile_special_deals_grid_left_grid_pos">
							<h4>We Offer <span>Best Products</span></h4>
						</div>
					</div>
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="resources/images/t1.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
											velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
											eum fugiat quo voluptas nulla pariatur</p>
										<h4>Laura</h4>
									</div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="resources/images/t2.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
											velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
											eum fugiat quo voluptas nulla pariatur</p>
										<h4>Michael</h4>
									</div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="resources/images/t3.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
											velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
											eum fugiat quo voluptas nulla pariatur</p>
										<h4>Rosy</h4>
									</div>
								</div>
							</article>
						</div>
					</div>
						<script src="resources/js/jquery.wmuSlider.js"></script> 
						<script>
							$('.example1').wmuSlider();         
						</script> 
				</div>
				<div class="col-md-5 w3agile_special_deals_grid_right">
					<img src="images/20.jpg" alt=" " class="img-responsive" />
					<div class="w3agile_special_deals_grid_right_pos">
						<h4>Women's <span>Special</span></h4>
						<h5>save up <span>to</span> 30%</h5>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //special-deals -->
	<!-- new-products -->
	<div class="new-products">
		<div class="container">
			<h3>New Products</h3>
			<div class="agileinfo_new_products_grids">
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="resources/images/25.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/23.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/24.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/22.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/26.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.jsp">Laptops</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$520</span> <i class="item_price">$500</i></p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Red Laptop"> 
								<input type="hidden" name="amount" value="500.00">   
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="resources/images/27.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/28.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/29.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/30.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/31.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.jsp">Black Phone</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$380</span> <i class="item_price">$370</i></p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Black Phone"> 
								<input type="hidden" name="amount" value="370.00">   
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="resources/images/34.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/33.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/32.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/35.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/36.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.jsp">Kids Toy</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$150</span> <i class="item_price">$100</i></p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Kids Toy"> 
								<input type="hidden" name="amount" value="100.00">   
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>  
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="resources/images/37.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/38.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/39.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/40.jpg" alt=" " class="img-responsive" />
							<img src="resources/images/41.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.jsp">Induction Stove</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$280</span> <i class="item_price">$250</i></p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Induction Stove"> 
								<input type="hidden" name="amount" value="250.00">   
								<button type="submit" class="w3ls-cart">Add to cart</button>
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //new-products -->
	<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Top Brands</h3>
			<div class="sliderfig">
				<ul id="flexiselDemo1">			
					<li>
						<img src="resources/images/tb1.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="resources/images/tb2.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="resources/images/tb3.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="resources/images/tb4.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/tb5.jpg" alt=" " class="img-responsive" />
					</li>
				</ul>
			</div>
			<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems:2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
			</script>
			<script type="text/javascript" src="resources/js/jquery.flexisel.js"></script>
		</div>
	</div>
	<!-- //top-brands --> 

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