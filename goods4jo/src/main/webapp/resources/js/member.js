
$(document).ready(function(){
	

	var lastDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
	
	window.onload = function(){
		
		var frm = document.frm;	
		
		// 년 구하기
		for( var j=2020;  j>= 1920; j--){
			frm.year.add( new Option(j, j));	 		
			// 만들고 브라우저 F12에서 Elements로 확인 : Option(j)와 Option(j,j) 차이
		} 
		//월 구하기
		for( var j=1;  j<= 12; j++){
			frm.month.add( new Option(j, j));				
		}		 
		calc();	 
		frm.year.onchange = calc;
		frm.month.onchange = calc;
		
		//선택 월에 따른 일수 구하는 함수
		function calc(){
			var monthday = frm.month.value;
			frm.day.options.length = 0;
			for( var j=0;  j <= lastDays[monthday-1]; j++){
				frm.day.add( new Option(j, j));				
			}
		}	 
		
		//year가 바꼈을때 선택된 year의 value를 붙여준다.
		$('#year').change(function(){
			var year = $('#year').val();
			$('#year').attr('value', year);
		});	
		$('#month').change(function(){
			var month = $('#month').val();
			$('#month').attr('value', month);
		});
		
		$('#day').change(function(){
			var day = $('#day').val();
			$('#day').attr('value', day);
		}); 
	}
	
	//셀러 체크박스 체크유무에 따라 셀러 가입양식 활성화/비활성화
	$('#seller').change(function(){
	    if ($('#seller').is(':checked') == true){
	    	 $('#sname').removeAttr('disabled');
	    	 $('#bank').removeAttr('disabled');
	    	 $('#account').removeAttr('disabled');
	    	 $('#sample4_execDaumPostcode').removeAttr('disabled');
	    	 $('#sample4_postcode').removeAttr('disabled');
	    	 $('#sample4_roadAddress').removeAttr('disabled'); 
	    	 $('#sample4_jibunAddress').removeAttr('disabled');
	    	 $('#sample4_detailAddress').removeAttr('disabled');
	    } else if($('#seller').is(':checked') == false){	       
	    	 $('#sname').val('').prop('disabled', true);
	    	 $('#bank').val('').prop('disabled', true);
	    	 $('#account').val('').prop('disabled', true); 
	    	 $('#sample4_execDaumPostcode').val('').prop('disabled', true);
	    	 $('#sample4_execDaumPostcode').val('').prop('value', '우편번호찾기');
	    	 $('#sample4_postcode').val('').prop('disabled', true);  
	    	 $('#sample4_roadAddress').val('').prop('disabled', true); 
	    	 $('#sample4_jibunAddress').val('').prop('disabled', true);
	    	 $('#sample4_detailAddress').val('').prop('disabled', true);
	    } 
	});
	
	$('#seller').change(function(){
	    if ($('#seller').is(':checked') == true){
	    	 $('#addseller').val('판매자');   
	    } else if($('#seller').is(':checked') == false){	       	    	
	    	 $('#addseller').val('소비자'); 
	    } 
	});

	//아이디 중복체크
	$('#mid').keyup(function(){ 
        //비동기통신 = ajax 
		$.ajax({
			type : 'post', //post방식으로 통신하겠습니다.
			async : true,
			url : 'member/idCheck.sajo',  
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data: "mid=" +$('#mid').val(),
			success : function(resultData){
				$('#idCheckResult').html(resultData);  
			} 
		});  
       
	})
	//전화번호 중복체크
	$('#mtel').keyup(function(){ 
        //비동기통신 = ajax 
		$.ajax({ 
			type : 'post', //post방식으로 통신하겠습니다.
			async : true,
			url : 'member/telCheck.sajo',  
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data: "mtel=" +$('#mtel').val(),
			success : function(resultData){
				$('#telCheckResult').html(resultData);  
			}  
		}); 
       
	})
	
	

	//약관 전체 체크하기 	(체크시  submit버튼 봉인해제)
	$('.check-all').change(function(){		
		//$('.agree').prop("checked", this.checked);
		$('[class^=agree]').prop("checked", $(this).is(':checked'));
		if ($('#agree1').is(':checked') == true&&
				$('#agree2').is(':checked') == true&&
				$('#agree3').is(':checked') == true)
		{			
			$('#msubmit').prop('disabled', false);
			$('#msubmit').prop('value', '회원가입완료');
		}else{
			$('#msubmit').prop('disabled', true);
			$('#msubmit').prop('value', '회원가입완료');
		} 
	});
	
	  	
	//필수약관 체크시 submit버튼 봉인해제	
	$('.agree').change(function(){ 
		if ($('#agree1').is(':checked') == true&&
				$('#agree2').is(':checked') == true&&
				$('#agree3').is(':checked') == true)
		{			
			$('#msubmit').val('').prop('disabled', false);
			$('#msubmit').val('').prop('value', '회원가입완료');
		}else{
			$('#msubmit').val('').prop('disabled', true);
			$('#msubmit').val('').prop('value', '회원가입완료');
		}		
	});
	
	

	
	//유효성 검사	 
	$('#frm').validate({  
		rules:{ 
			mid :{
				  required:true, 
				  minlength:6,
				  maxlength:10 
				  },
			mname:{required:true,
				   minlength:2,
				   hangul:true
				   },
			email:{required:true,
					email:true
					}, 
			mpassword : {
				required:true, 
				minlength:8,
				maxlength:16,
				regx:/^(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@@@#$%^&+=]).*$/
				},
			passconf : {equalTo:'#mpassword'}   
			},
			mtel :{
				required:true, 
				maxlength:11,
				number:true 
			},
			account:{
				required:true, 
				number:true  
			},		
		success:function(label){			
		}  
	});
	$('#frmModify').validate({  
		rules:{ 
			mid :{
				required:true, 
				minlength:6,
				maxlength:10 
			},
			mname:{required:true,
				minlength:2,
				hangul:true 
			},
			email:{required:true,
				email:true
			}, 
			mpassword : {
				required:true, 
				minlength:8,
				maxlength:16,
				regx:/^(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@@@#$%^&+=]).*$/
			},
			passconf : {equalTo:'#mpassword'}   
			},
			mtel :{
				required:true, 
				maxlength:11,
				number:true 
			},
			account:{
				required:true, 
				number:true  
			},		
			success:function(label){			
			}  
		});
	
	
	
	//이름 입력시 한글만 입력받기
	$('#mname').keyup(function(event){
		regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
        v = $(this).val();
        if (regexp.test(v)) {
            alert("실명을 입력하여 주세요\n한글만 입력가능 합니다.");
            $(this).val(v.replace(regexp, '')); 
        }
	});
	
	//숫자만 입력받기
	$('#mtel').keyup(function(event){
		regexp = /[^0-9]/gi; 
        v = $(this).val(); 
        if (regexp.test(v)) {
            alert("숫자만 입력 가능합니다.");
            $(this).val(v.replace(regexp, ''));  
        }
	}); 
	$('#account').keyup(function(event){
		regexp = /[^0-9]/gi;  
        v = $(this).val(); 
        if (regexp.test(v)) {
            alert("숫자만 입력 가능합니다.");
            $(this).val(v.replace(regexp, ''));  
        }
	}); 
	
	
	// 비밀번호 패턴 체크 (8자 이상, 문자, 숫자, 특수문자 포함여부 체크) 
	function checkPassword(str) { 
		var pattern1 = /[0-9]/; // 숫자 
		var pattern2 = /[a-zA-Z]/; // 문자 
		var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 
		if(!pattern1.test(str) || !pattern2.test(str) || !pattern3.test(str) || str.length < 8) { 
				alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다."); 
				return false; 
			} else { 
				return true;
			} 
	}

	$.extend($.validator.messages, { 
		required: "필수 항목입니다.",
		remote: "항목을 수정하세요.",
		email: "유효하지 않은 E-Mail주소입니다." +"<br/>", 
		url: "유효하지 않은 URL입니다.",
		date: "올바른 날짜를 입력하세요.",
		dateISO: "올바른 날짜(ISO)를 입력하세요.", 
		number: "숫자만 입력 가능합니다.",
		digits: "숫자만 입력 가능합니다.",
		creditcard: "신용카드 번호가 바르지 않습니다.",
		equalTo: "같은 값을 다시 입력하세요.",
		extension: "올바른 확장자가 아닙니다.",
		maxlength: $.validator.format( "{0}자를 넘을 수 없습니다. " ),
		minlength: $.validator.format( "{0}자 이상 입력하세요." ),
		rangelength: $.validator.format( "문자 길이가 {0} 에서 {1} 사이의 값을 입력하세요." ),
		range: $.validator.format( "{0} 에서 {1} 사이의 값을 입력하세요." ),
		max: $.validator.format( "{0} 이하의 값을 입력하세요." ),
		min: $.validator.format( "{0} 이상의 값을 입력하세요." ), 
	} );

	


	
	$('.sample4_execDaumPostcode').click(function(){
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	        new daum.Postcode({
	            oncomplete: function(data) { 
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다. 
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                if ($('#addseller').is(':checked') == true){
	                	document.getElementById('sample4_postcode1').value = data.zonecode;
	                	document.getElementById("sample4_roadAddress1").value = roadAddr;
	                	document.getElementById("sample4_jibunAddress1").value = data.jibunAddress;
	                }else{
	                	document.getElementById('sample4_postcode').value = data.zonecode;
	                	document.getElementById("sample4_roadAddress").value = roadAddr;
	                	document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                } 
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }

	                var guideTextBox = document.getElementsByClassName("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';

	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open(); 		
	});
	 
	//약관 클릭시 팝업창 띄워서 보이기 
	$('#private').click(function(){
		window.open('resources/html/memberPrivate.html',' ', 'width = 900, height = 500');
	}); 
	$('#shopContract').click(function(){
		window.open('resources/html/shopContract.html',' ', 'width = 900, height = 500');
	}); 
	var count=0;
	
	//회원탈퇴 클릭시 inputbox 동적 생성
	$('#dropoutmember').click(function(){
		count++;
		if(count==1){
			$('#hiddenbybutton').hide();	
			$('#dropoutmember').hide();	
			$('#modifyid').hide();	
			$('#modifyname').hide();	
			$('#modifypassword').hide();	
			$('#modifypassconf').hide();	
			$('#modifymail').hide();	
			$('#modifytel').hide();	
			$('#telbrand').hide();	
	    	$('#sellerbutton').hide();
	  
			var resultSpan = document.getElementById("idAttach");             
	  
	        var inputTag = document.createElement("INPUT");           
	        var deletemember = document.createElement("INPUT");           
	        var cancelout = document.createElement("INPUT");            
	        var brTag = document.createElement("BR"); 
	        
	        inputTag.type = "password";
	        inputTag.name = "pwfordelete";
	        inputTag.id = "pwfordelete"; 
	        inputTag.required='true';
	        inputTag.placeholder='탈퇴하려면 비밀번호를 입력하세요';
	        
	        deletemember.type = "submit";
	        deletemember.name = "deletemember";
	        deletemember.id = "deletemember"; 
	        deletemember.value="탈퇴하기";  
	        
	        cancelout.type = "button";
	        cancelout.name = "cancelout"; 
	        cancelout.id = "cancelout"; 
	        cancelout.value="탈퇴취소";
	        
	        resultSpan.appendChild(inputTag); 
	        resultSpan.appendChild(brTag);
	        resultSpan.appendChild(brTag);
	        resultSpan.appendChild(deletemember); 
	        resultSpan.appendChild(cancelout);
	        resultSpan.appendChild(brTag);                
		}else{
			
			$('#hiddenbybutton').hide();	
			$('#dropoutmember').hide();	
			$('#modifyid').hide();	
			$('#modifyname').hide();	
			$('#modifypassword').hide();	
			$('#modifypassconf').hide();	
			$('#modifymail').hide();	
			$('#modifytel').hide();	
			$('#telbrand').hide();	
			
			
			$('#pwfordelete').show();	
			$('#deletemember').show();	
			$('#cancelout').show();	
		}
	}); 
 
	$(document).on("click","#cancelout",function(){
		$('#hiddenbybutton').show();	
		$('#dropoutmember').show();	 
		$('#modifyid').show();	
		$('#modifyname').show();	 
		$('#modifypassword').show();	
		$('#modifypassconf').show();	
		$('#modifymail').show();	
		$('#modifytel').show();	 
		$('#telbrand').show();	
		$('#sellerbutton').show();  
		
		$('#pwfordelete').hide();	
		$('#deletemember').hide();	 
		$('#cancelout').hide();	
	}) 
	
	//수정폼에서 셀러회원 등록시 폼 보이고 숨기기
	$('#addseller').change(function(){
	    if ($('#addseller').is(':checked') == true){
	    	 $('#sellerfrm').show();	    	
	    } else if($('#addseller').is(':checked') == false){	       
	    	$('#sellerfrm').hide();	 

	    }  
	});
});
