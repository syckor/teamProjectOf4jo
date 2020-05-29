
$(document).ready(function(){


	var lastDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];


	window.onload = function(){
		
		var frm = document.frm;
		
		// 년 구하기
		for( var j=1920;  j<= 2020; j++){
			frm.year.add( new Option(j, j));				// 만들고 브라우저 F12에서 Elements로 확인 : Option(j)와 Option(j,j) 차이
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
			for( var j=1;  j <= lastDays[monthday-1]; j++){
				frm.day.add( new Option(j, j));				
			}
		}
		
		
		
	}
	
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
		     console.log('unchecked'); 
	    } else {
	       
	    	 $('#sname').val('').prop('disabled', true);
	    	 $('#bank').val('').prop('disabled', true);
	    	 $('#account').val('').prop('disabled', true);
	    	 $('#saddrbutton').val('').prop('disabled', true);
	    	 $('#postnumber').val('').prop('disabled', true);
	    	 $('#loadaddr').val('').prop('disabled', true);
	    	 $('#oldaddr').val('').prop('disabled', true);
	    	 $('#detailofaddr').val('').prop('disabled', true);
		     console.log('unchecked');
	    }
	});


	
	document.getElementById('sample4_execDaumPostcode').onclick=function(){
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
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }

	                var guideTextBox = document.getElementById("guide");
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
	    		
		
	}
	 


});
