<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<link rel="stylesheet" href="/JAVACOMICS/css/supportCss/supportModifyForm.css">
  
<div class="supportModifyFormDiv">
	<div class="backBtnSupportView"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<form id="supportModifyForm" enctype="multipart/form-data" method="post" 
									action="">       
		<table>
			<input type="hidden" id="seq" name="seq" value="${requestScope.seq }">
			<input type="hidden" id="pg" name="pg" value="${requestScope.pg }">
			
			<tr>
				<td><input type="text" name="supportSubject" id="supportSubject" placeholder="제목을 적어주세요"></td>
			</tr>
			
			
			
			<tr>
				<td><textarea cols="50" rows="15" name="supportContent" id="supportContent"></textarea></td>
			</tr>
			
			<tr>
				<td>
					<div class="msgDiv"></div>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" id="supportModifyBtn" value="글수정"/>
					<input type="reset" value="다시작성"/>
				</td>
	        </tr>
		</table>
	</form>
</div>


<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/customerboard/getCustomerboard',
		data: 'seq='+$('input[name=seq]').val(),
		dataType: 'json',
		success : function(data){
			//alert(JSON.stringify(data));
			$('#supportSubject').val(data.customerboardDTO.subject);
			$('#supportContent').val(data.customerboardDTO.content);
		},
		error: function(err){
			console.log(err);
		}
	});
	
});

$('#supportModifyBtn').click(function(){
	$('.msgDiv').empty();
	
	if($('#supportSubject').val()==''){
		$('.msgDiv').text('제목을 입력하세요');
		$('.msgDiv').css('color','red');
		$('.msgDiv').css('font-size','8pt');
		$('.msgDiv').css('font-weight','bold');
		
	}else if($('#supportContent').val()==''){
		$('.msgDiv').text('내용을 입력하세요')
		$('.msgDiv').css('color','red')
		$('.msgDiv').css('font-size','8pt')
		$('.msgDiv').css('font-weight','bold');
		
	}else{
		$.ajax({
			type: 'post',
			url: '/JAVACOMICS/customerboard/boardModify',
			data: {
				'subject': $('#supportSubject').val(),
				'content': $('#supportContent').val(),
				'seq': $('#seq').val()
			},
			success: function(){
				alert('글수정 완료');
				location.href='/JAVACOMICS/customerboard/customerboardList';
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});


</script>
