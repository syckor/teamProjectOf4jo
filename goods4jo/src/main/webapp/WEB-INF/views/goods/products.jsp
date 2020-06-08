<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sajo.domain.MemberVO" %>
<%MemberVO vo = (MemberVO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Goods SAJO a Ecommerce Online Shopping Category Bootstrap
	Responsive Website Template | Products1 :: w3layouts</title>
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
                                       <span id="loginResult" style="width:150px;color:red"></span>                           
                                       <div class="sign-up"> 
                                           <input type="submit" value="로그인" id='loginto'/>
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
                              <li class="resp-tab-item" aria-controls="tab_item-0"><a href='buylist.sajo' id='clicktobuylist'><span id='buylistcss' class='buylistcss'>구매내역</span></a></li>
                              <li class="resp-tab-item" aria-controls="tab_item-1"><span>회원정보 수정하기</span></li>
                              <%if(vo.getMtype().equals("판매자")){%>  
                              
                                 <li class="resp-tab-item" aria-controls="tab_item-2"><a href='gregist.sajo'>판매물품 등록</a></li>
                                 <li class="resp-tab-item" aria-controls="tab_item-3"><a href='sellList.sajo'>판매물품 조회</a></li>
                                 <li class="resp-tab-item" aria-controls="tab_item-4"><span>사업자등록 철회</span></li> 
                              <%}%>      
                              <li class="resp-tab-item" aria-controls="tab_item-5"><a href='member/logout.sajo'>로그아웃</a></li>                           
                           </ul>      
                           <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
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
                                       <input placeholder="비밀번호" name="mpassword" type="password" id='modifypassword' value=<%=vo.getMpassword() %> required="">
                                       <input placeholder="비밀번호 확인" name="passconf" type="password" id='modifypassconf' value=<%=vo.getMpassword() %> required="">                                    
                                       <input placeholder="이메일" name="mail" type="email" id='modifymail' value='<%=vo.getMail()%>' required="">                            
                                       <div id='telbrand'> 
                                           <input type = "radio" name = "phone"/> SKT  
                                             <input type = "radio" name = "phone"/> KT 
                                             <input type = "radio" name = "phone"/> LGU+
                                          </div>                                    
                                       <input placeholder="전화번호 (-)없이 입력" name="mtel" type="text" id='modifytel' value='<%=vo.getMtel()%>' required="" >                                       
                                       <br/>
                                       <div id='sellerbutton'>
                                       <%if(vo.getMtype().equals("소비자")){%> 
                                          <div>판매자 등록하기</div><input type="checkbox" name="addseller" id='addseller'>
                                       <%}%>    
                                       </div>
                                       <div id='sellerfrm' style="display: none;">                                  
                                          <input placeholder="판매자명(회사이름)" name="sname" id='sname1' type="text">
                                          <br/>은행선택   
                                          <select  name="bank" type="text" class="bank" id='bank1'>
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
                                          <input placeholder="계좌번호 (-)없이 입력" name="account" id='account1' type="text">
                                          판매자주소<br/> 
                                          <input type="button" name='saddrbutton' id ='sample4_execDaumPostcode1' class='sample4_execDaumPostcode' onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                                           <input type="text" name='postnumber' id="sample4_postcode1" class='sample4_postcode' placeholder="우편번호">
                                          <input type="text" name='loadaddr' id="sample4_roadAddress1" class='sample4_roadAddress' placeholder="도로명주소">
                                          <span id="guide" style="color:#999;display:none"></span>    
                                          <input type="text" name='detailofaddr' id="sample4_detailAddress1" class='sample4_detailAddress' placeholder="상세주소">
                                       </div>
                                       <br/>
                                       <br/> 
                                       <div class="modify" id='hiddenbybutton'> 
                                          <input type="submit" value="정보수정하기" id='mmodify'/>  
                                       </div>    
                                    </form>   
                                    
                                    <c:if test='${not empty param.insertsuc}'>
                                        <script>
                                          alert("회원정보가 수정되었습니다.");
                                        </script>
                                     </c:if> 
                                       <input type="button" value="회원탈퇴" id='dropoutmember'/>
                                       <br/>                                     
                                    <form action='member/deleteMember.sajo' name='deleteMember' id='mdelete'>
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
                           
                           <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-2">
                              <div class="facts">
                                 <div class="register">
                                     
                                 </div>
                              </div>
                           </div> 
                           
                           <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-3">
                              <div class="facts">
                                 <div class="register"> 
                                    
                                 </div> 
                              </div>
                           </div> 
                           
                              
                            
                           <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-4">
                              <div class="facts">
                                 <div class="register"> 
                                    <form action="member/checkPass.sajo" method="post" name='frmdropseller' id='frmdropseller'>
                                       비밀번호를 입력하세요<br/> 
                                          <input type='hidden' name='mid' value='<%=vo.getMid()%>'></input>
                                          <input type='password' name='checkpassword' id='checkpassword'></input>
                                          <input type="submit" value="확인" id='checkPass'/>
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
      <%    //vo가 null이면 로그인화면 띄우고 null이 아니면 로그인이 있다는 얘기임    
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

<!--    navigation -->
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
                  <li><a href="main.sajo">Home</a></li>   
                  <!-- Mega Menu -->
                  <li class="dropdown">
                     <a href="products.sajo" class="dropdown-toggle act" data-toggle="dropdown" >Goods <b class="caret"></b></a>
                     <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                           <div class="col-sm-3">
                              <ul class="multi-column-dropdown">
                                 <h6><a href="kakao.sajo">Kakao</a></h6>
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
                                 <h6><a href="line.sajo">Line</a></h6>
                                 <li><a href="products.sajo">브라운&프렌즈</a></li>
                                 <li><a href="products.sajo">BT21</a></li>
                                 <li><a href="products.sajo">브롤스타즈 <span>New</span></a></li>
<!-- 								<li><a href="gregist.sajo"><i>상품 등록</i></a></li> -->
                              </ul>
                           </div>
                           <div class="col-sm-2">
                              <ul class="multi-column-dropdown">
                                 <h6><a href="general.sajo">General</a></h6>
                                 <li><a href="products.sajo">인형</a></li>
                                 <li><a href="products.sajo">생필품</a></li>
                                 <li><a href="products.sajo">의류</a></li>
                                 <li><a href="products.sajo">그 외</a></li>
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
                  <li><a href="about.sajo">About Us</a></li>
                  <li><a href="notice.sajo">Notice</a></li>
                  <li><a href="mail.sajo" id = 'qna'>Q&A</a></li>
						
					</ul>
            </div>
         </nav>
      </div>
   </div>
<!--    navigation 끝 -->
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>Goods 판매 </h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Products1</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- mobiles -->
	<div class="mobiles">
		<div class="container">
			<div class="w3ls_mobiles_grids">
				<div class="col-md-4 w3ls_mobiles_grid_left">
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
												<li><a href="#">라이언</a></li>
												<li><a href="#">어피치</a></li>
												<li><a href="#">무지</a></li>
												<li><a href="#">프로도</a></li>
												<li><a href="#">네오</a></li>
												<li><a href="#">튜브</a></li>
												<li><a href="#">제이지</a></li>
												<li><a href="#">콘</a></li>
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
												<li><a href="#">브라운&프렌즈</a></li>
												<li><a href="#">BT21</a></li>
												<li><a href="#">브롤스타즈</a></li>
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
					<div class="w3ls_mobiles_grid_left_grid">
						<h3>Color</h3>
						<div class="w3ls_mobiles_grid_left_grid_sub">
							<div class="ecommerce_color">
								<ul>
									<li><a href="#"><i></i> Red(5)</a></li>
									<li><a href="#"><i></i> Brown(2)</a></li>
									<li><a href="#"><i></i> Yellow(3)</a></li>
									<li><a href="#"><i></i> Violet(6)</a></li>
									<li><a href="#"><i></i> Orange(2)</a></li>
									<li><a href="#"><i></i> Blue(1)</a></li>
								</ul>
							</div>
						</div>
					</div>
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
				</div>
				<!-- 맨위 배너 두개 -->
				<div class="col-md-8 w3ls_mobiles_grid_right">
					<div class="col-md-6 w3ls_mobiles_grid_right_left">
						<div class="w3ls_mobiles_grid_right_grid1">
							<img
								src="https://item.kakaocdn.net/do/7100fd9ddb4f8f7e8a8eafcb81a974f4f43ad912ad8dd55b04db6a64cddaf76d"
								alt=" " class="img-responsive" />
							<div class="w3ls_mobiles_grid_right_grid1_pos1">
							</div>
						</div>
					</div>
					<div class="col-md-6 w3ls_mobiles_grid_right_left">
						<div class="w3ls_mobiles_grid_right_grid1">
							<img src="https://i.pinimg.com/originals/cf/ed/8e/cfed8eac99510be03fa144a2a09600c2.gif" alt=" " class="img-responsive" />
							<div class="w3ls_mobiles_grid_right_grid1_pos">
							</div>
						</div>
					</div>
					<div class="clearfix"></div>

					<!-- 상품 보여주기 -->
					<div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
							<h3>Kakao</h3>
						</div>
						<div class="w3ls_mobiles_grid_right_grid2_right">
							<select name="select_item" class="select_item">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<c:forEach items="${kakao }" var="kakao" varStatus="status">
						<div class="w3ls_mobiles_grid_right_grid3">
							<div
								class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
								<div class="agile_ecommerce_tab_left mobiles_grid">
									<div class="hs-wrapper hs-wrapper2">
										<c:choose>
											<c:when test="${status.count eq 1}">
												<c:forEach items="${k_file1 }" var="k_file">
													<c:if test="${not empty k_file }">
													<img src="resources/upload/${k_file}" width="500px" height="500px" alt=" "class="img-responsive">
													</c:if>
												</c:forEach>
												<c:forEach items="${k_src1 }" var="k_src">
													<img src="${k_src}" alt=" " class="img-responsive">
												</c:forEach>
											</c:when>
											<c:when test="${status.count eq 2}">
												<c:forEach items="${k_file2 }" var="k_file">
												<c:if test="${not empty k_file }">
													<img src="resources/upload/${k_file}" alt=" "class="img-responsive">
												</c:if>
												</c:forEach>
												<c:forEach items="${k_src2 }" var="k_src">
													<img src="${k_src}" alt=" " class="img-responsive">
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach items="${k_file3 }" var="k_file">
												<c:if test="${not empty k_file }">
													<img src="resources/upload/${k_file}" alt=" "class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${k_src3 }" var="k_src">
													<img src="${k_src}" alt=" " class="img-responsive">
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
									<h5>
										<a href="detailGoods.sajo?gid=${kakao.gid }">${kakao.gname }</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">${kakao.price }원</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${kakao.gname }" /> <input
												type="hidden" name="amount" value="${kakao.price }" />
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
<!-- 									<div class="mobiles_grid_pos"> -->
<!-- 																			<h6>New</h6> -->
<!-- 									</div> -->
								</div>
							</div>
							</div>
					</c:forEach>

					<!-- 					LINE -->
					<div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
							<h3>Line</h3>
						</div>
						<div class="w3ls_mobiles_grid_right_grid2_right">
							<select name="select_item" class="select_item">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<c:forEach items="${line }" var="line" varStatus="status">
						<div class="w3ls_mobiles_grid_right_grid3">
							<div
								class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
								<div class="agile_ecommerce_tab_left mobiles_grid">
									<div class="hs-wrapper hs-wrapper2">
										<c:choose>
											<c:when test="${status.count eq 1}">
												<c:forEach items="${l_file1 }" var="l_file">
												<c:if test="${not empty l_file }">
													<img src="resources/upload/${l_file}" alt=" "
														class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${l_src1}" var="l_src">
													<img src="${l_src}" alt=" " class="img-responsive">
													</c:forEach>
											</c:when>
											<c:when test="${status.count eq 2}">
												<c:forEach items="${l_file2 }" var="l_file">
												<c:if test="${not empty l_file }">
													<img src="resources/upload/${l_file}" alt=" "
														class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${l_src2 }" var="l_src">
													<img src="${l_src}" alt=" " class="img-responsive">
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach items="${l_file3 }" var="l_file">
												<c:if test="${not empty l_file }">
													<img src="resources/upload/${l_file}" alt=" "
														class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${l_src3 }" var="l_src">
														<c:if test="${not empty l_src }">
													<img src="${l_src}" alt=" " class="img-responsive">
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
									<h5>
										<a href="detailGoods.sajo?gid=${line.gid }&bno=5">${line.gname }</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">${line.price }</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${line.gname }" /> <input
												type="hidden" name="amount" value="${line.price }" />
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
									<!-- 								<div class="mobiles_grid_pos"> -->
									<!-- 									<h6>New</h6> -->
									<!-- 								</div> -->
								</div>
							</div>
					</c:forEach>

					<!-- 					General -->
					<div class="w3ls_mobiles_grid_right_grid2">
						<div class="w3ls_mobiles_grid_right_grid2_left">
							<h3>General</h3>
						</div>
						<div class="w3ls_mobiles_grid_right_grid2_right">
							<select name="select_item" class="select_item">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<c:forEach items="${general }" var="general" varStatus="status">
						<div class="w3ls_mobiles_grid_right_grid3">
							<div
								class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
								<div class="agile_ecommerce_tab_left mobiles_grid">
									<div class="hs-wrapper hs-wrapper2">
										<c:choose>
											<c:when test="${status.count eq 1}">
												<c:forEach items="${g_file1 }" var="g_file">
												<c:if test="${not empty g_file }">
													<img src="resources/upload/${g_file}" alt=" "class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${g_src1 }" var="g_src">
													<c:if test="${not empty g_src }">
													<img src="${g_src}" alt=" " class="img-responsive">
													</c:if>
												</c:forEach>
											</c:when>
											<c:when test="${status.count eq 2}">
												<c:forEach items="${g_file2 }" var="g_file">
												<c:if test="${not empty g_file }">
													<img src="resources/upload/${g_file}" alt=" "class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${g_src2 }" var="g_src">
												<c:if test="${not empty g_src }">
													<img src="${g_src}" alt=" " class="img-responsive">
													</c:if>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach items="${g_file3 }" var="g_file">
												<c:if test="${not empty g_file }">
													<img src="resources/upload/${g_file}" alt=" "class="img-responsive">
														</c:if>
												</c:forEach>
												<c:forEach items="${g_src3 }" var="g_src">
												<c:if test="${not empty g_src }">
													<img src="${g_src}" alt=" " class="img-responsive">
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
									<h5>
										<a href="detailGoods.sajo?gid=${general.gid }">${general.gname }</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">${general.price }</i>
										</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="w3ls_item" value="${general.gname }" /> <input
												type="hidden" name="amount" value="${general.price }" />
											<button type="submit" class="w3ls-cart">Add to cart</button>
										</form>
									</div>
									<!-- 								<div class="mobiles_grid_pos"> -->
									<!-- 									<h6>New</h6> -->
									<!-- 								</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
					</c:forEach>
				</div>
			</div>
		</div>
		</div>
		<div class="clearfix"></div>
		
				<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo2").flexisel({
							visibleItems : 4,
							animationSpeed : 1000,
							autoPlay : true,
							autoPlaySpeed : 3000,
							pauseOnHover : true,
							enableResponsiveBreakpoints : true,
							responsiveBreakpoints : {
								portrait : {
									changePoint : 568,
									visibleItems : 1
								},
								landscape : {
									changePoint : 667,
									visibleItems : 2
								},
								tablet : {
									changePoint : 768,
									visibleItems : 3
								}
							}
						});

					});
				</script>
				<script type="text/javascript" src="resources/js/jquery.flexisel.js"></script>
			</div>
		</div>
		<!-- //Related Products -->
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