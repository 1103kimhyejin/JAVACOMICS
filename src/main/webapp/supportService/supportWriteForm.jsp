<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/supportCss/supportWriteForm.css">
  
<div class="supportWriteFormDiv">
	<div class="backBtnSupport"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<form id="supportWriteForm" enctype="multipart/form-data" method="post" 
									action="">       
		<table>
			
			
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
					<label>비밀글<input type="checkbox" id="secret" name="secret" value="T" ></label>
				</td>
			</tr>
			<tr>
				<td>
					
					<input type="button" id="supportWriteBtn" value="글저장"/>
					<input type="reset" value="다시작성"/>
				</td>
	        </tr>
		</table>
	</form>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$('#supportWriteBtn').click(function(){
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
		if($('#secret').is(':checked')){
			$('#secret').val('T')
		} else {
			$('#secret').val('F')
		}
		$.ajax({
			type: 'post',
			url: '/JAVACOMICS/customerboard/customerboardWrite',
			data: {
				'subject': $('#supportSubject').val(),
				'content': $('#supportContent').val(),
				'secret': $('#secret').val()
				
			},
			success: function(){
				$(location).attr("href", "/JAVACOMICS/customerboard/customerboardList")
			},
			error: function(err){
				console.log(err);
			}
		});
	
	}
});


</script>