<%@page import="java.io.PrintWriter"%>
<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sajo.domain.MemberVO" %>	
<%@page import="com.sajo.domain.BuyVO"%>
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%>  
<% 
 
MemberVO result = (MemberVO)session.getAttribute("member"); 



	String w3ls_item[] = null;
String quantity[] = null;
String amount[] = null;
String cmd = "";
int upload = 0;
String dcost[]= null;
String gid[] =null;
request.setCharacterEncoding("utf-8");

//  Form의 hidden값 넘겨받기
w3ls_item = request.getParameterValues("w3ls_item"); // 물건이름
quantity = request.getParameterValues("quantity"); //수량
amount = request.getParameterValues("amount"); //물건가격
cmd = request.getParameter("cmd");// 물건총합가격
upload = Integer.parseInt(request.getParameter("upload"));//리스트의 길이
dcost = request.getParameterValues("dcost");
gid = request.getParameterValues("gid");
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

	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('jsp,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	
	});
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
		
        $("#ppp").click(function(){
		$("form").submit(function(){
            
			})
        
    })
    

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
			
				var b = $(this).parents("tr").find(".sbmincart-price").val();
                alert(b);
				var a = $(".sbmincart-subtotal").val();
				$(this).parents("tr").remove();
				$(".sbmincart-subtotal").val(a - b);


			})

			/*체크박스 선택된 행만 넘기기*/

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


table.redTable {
   border: 2px solid #EBA823;
   background-color: #EEE7DB;
   width: 100%;
   text-align: center;
   border-collapse: collapse;
}

table.redTable td, table.redTable th {
   border: 1px solid #AAAAAA;
   padding: 3px 2px;
}

table.redTable tbody td {
   font-size: 15px;
}



table.redTable thead {
   background: #EBA823;
}

table.redTable thead th {
   font-size: 19px;
   font-weight: bold;
   color: #FFFFFF;
   text-align: center;
   border-left: 2px solid #EBA823;
}

table.redTable thead th:first-child {
   border-left: none;
}

table.redTable tfoot {
   font-size: 13px;
   font-weight: bold;
   color: #FFFFFF;
   background: #EBA823;
}

table.redTable tfoot td {
   font-size: 13px;
}

table.redTable tfoot .links {
   text-align: right;
}
 
table.redTable tfoot .links a {
   display: inline-block;
   background: #FFFFFF;
   color: #3975ED;
   padding: 2px 8px;
   border-radius: 5px;
}
.align-center {
	text-align: center;
}

table {
	margin-left: auto;
	margin-right: auto;
}

h1 {
	height: 100px
}
}
</style>

<!-- //end-smooth-scrolling -->
</head>
<body class="align-center">
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
													<input type="button" name='saddrbutton' id = 'sample4_execDaumPostcode' class='sample4_execDaumPostcode' onclick="sample4_execDaumPostcode()" value="우편번호 찾기" disabled ><br>
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
														<input type="button" name='saddrbutton' id ='sample4_execDaumPostcode' class='sample4_execDaumPostcode' value="우편번호 찾기"><br>
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
				<h1><a href="member/main.sajo">Goods 4jo<span>All of goods, in this world!</span></a></h1>
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

	<h1>장바구니</h1>

	<div>
		<span style="color: red">장바구니</span>><span>구매하기</span>><span>결제완료</span>
	</div>

	 <form action="purchase.sajo" method="get">
	  
	
		<table border="1" class='redTable'> 



			<tr>
				<th width="300"><label><input type="checkbox"
						id="checkAll" name="check" value="전체선택">전체선택</label></th>
				<th width="300">상품정보</th>
				<th whith="300">수량</th>
				<th width="300">가격</th>
				<th width="50">삭제</th>
			</tr>

			<%
				for (int i = 0; i <amount.length; i++) {
			
			%>

			<tr class="remove">

				<td width="300"><input type="checkbox" class="check" id="check"
					name="check"></td>


				<td><div class="sbmincart-details-name">
						<a class="sbmincart-name" href="http://<%=w3ls_item[i]%>.jsp"><%=w3ls_item[i]%></a>
						<!--아이템 페이지로 이동  -->
						<ul class="sbmincart-attributes">
						</ul>
					</div></td>

              
				<td><div class="sbmincart-details-quantity">
						<input class="sbmincart-quantity" data-sbmincart-idx="0"
							name="quantity" type="text" style="width: 30px"
							value="<%=quantity[i]%>" autocomplete="off" disabled />
					</div></td>

				<td><div class="sbmincart-details-price">
						<input class="sbmincart-price" type="text" style="width: 50px"
							value="<%=amount[i]%>" disabled />
<%-- 						<div><%=dcost[i] %></div><%=gid[i] %> --%>
					</div></td>
					

				<td><div class="sbmincart-details-remove">
						<button type="button" class="sbmincart-remove"
							data-sbmincart-idx="0">×</button>
					</div>
<!-- 							컨트롤러로 일단은 보내긴 하는데........ -->
					 		<input type="hidden" name="list[<%=i %>].gname" value="<%=w3ls_item[i]%>"> 
                        	<input type="hidden" name="list[<%=i %>].bcount" value="<%=quantity[i]%>">
                            <input type="hidden" name="list[<%=i %>].totalprice" value="<%=amount[i]%>">
                            <input type="hidden" name="list[<%=i %>].dcost" value="<%=dcost[i]%>">
             				<input type="hidden" name="list[<%=i %>].gid" value="<%=gid[i]%>">
             				
<!--              				일단 purchase실행 하게하기위해 작성하긴 하는데 -->
             				<input type="hidden" name="gname" value="<%=w3ls_item[i]%>"> 
                        	<input type="hidden" name="bcount" value="<%=quantity[i]%>">
                            <input type="hidden" name="totalprice" value="<%=amount[i]%>">
                            <input type="hidden" name="dcost" value="<%=dcost[i]%>">
             				<input type="hidden" name="gid" value="<%=gid[i]%>"> 						 						
					</td>   
                       
			</tr>
			
			<%
				} 
			%>
		</table>
		
		
 
		<br/>
		<br/>
		<input type="hidden" name="cmd" value="<%=cmd%>"> 
		<div class="sbmincart-footer">
			총 결제 금액 <input class="sbmincart-subtotal" type="text"
				value="<%=cmd%>" >
		</div> 
		<br/>
		<br/>
		
       
   		<%if(vo==null){ %> 
               <a href="#" data-toggle="modal" data-target="#myModal88"><input type="submit" class="sbmincart-submit" id="ppp" value="구매하기"
			data-sbmincart-alt="undefined" ></a>
            <%}else{ %>
              <input type="submit" class="sbmincart-submit" id="ppp" value="구매하기"
			data-sbmincart-alt="undefined" >            
            <%}%> 
   
    
	</form>
	
	<!-- //breadcrumbs -->
	<!-- mobiles -->


	<!-- //Related Products -->
	<!-- newsletter -->

	<!-- //newsletter -->
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

        document.getElementById('ppp').onclick = function(){
			alert("1"); 
			items=null; 
		}  
   </script>  
	<!-- //cart-js --> 
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
   <div id="disqus_thread"></div>
               

</body>
</html>