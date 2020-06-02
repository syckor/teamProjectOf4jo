$(function(){
	$('#brend').change(function(){
		var first=$('#brend').val();//Gid의 첫글자라서 first
		var size=$("#characters option").size();
		for(var i=0;i<size;i++){
			$("#characters option:eq(0)").remove();//맨처음 i=0일때 0번이 삭제되면 1번이 0번이 된다
													//그래서 0번을 size만큼 삭제했다.
		}
		
		if(first=='k'){
		$('#characters').append("<option value=''>캐릭터를 선택해 주세요</option>");
		$('#characters').append("<option value='1'>라이언</option>");
		$('#characters').append("<option value='2'>어피치</option>");
		$('#characters').append("<option value='3'>무지</option>");
		$('#characters').append("<option value='4'>프로도</option>");
		$('#characters').append("<option value='5'>네오</option>");
		$('#characters').append("<option value='6'>튜브</option>");
		$('#characters').append("<option value='7'>제이지</option>");
		$('#characters').append("<option value='8'>콘</option>");
		$('#characters').append("<option value='0'>그 외</option>");

		}else if(first=='l'){
			$('#characters').append("<option value=''>캐릭터를 선택해 주세요</option>");
			$('#characters').append("<option value='1'>브라이누&프렌즈</option>");
			$('#characters').append("<option value='2'>BT21</option>");
			$('#characters').append("<option value='3'>브롤스타즈</option>");
			$('#characters').append("<option value='0'>그 외</option>");
		}else if(first=='g'){
			$('#characters').append("<option value=''>캐릭터를 선택해 주세요</option>");
			$('#characters').append("<option value='1'>인형</option>");
			$('#characters').append("<option value='2'>생필품</option>");
			$('#characters').append("<option value='3'>의류</option>");
			$('#characters').append("<option value='0'>그 외</option>");
		}
	});
	
	
});