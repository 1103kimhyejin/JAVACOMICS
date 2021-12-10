<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/supportCss/supportReplyForm.css">
  
<div class="supportReplyFormDiv">
	<div class="backBtnSupportView"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<form id="supportReplyForm" enctype="multipart/form-data" method="post" 
									action="">       
		<table>
			<input type="hidden" id="seq" name="seq" value="${requestScope.pseq }">
			<input type="hidden" id="pg" name="pg" value="${requestScope.pg }">
			<input type="hidden" id="pseq" name="pseq" value="${requestScope.pseq }">
			
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
					<label>비밀글<input type="checkbox" id="secretTF" name="secretTF" value="T" ></label>
				</td>
			</tr>
			<tr>
				<td>
					
					<input type="button" id="supportReplyBtn" value="답글쓰기"/>
					<input type="reset" value="다시작성"/>
				</td>
	        </tr>
		</table>
	</form>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

//답글쓰기
$('#supportReplyBtn').click(function(){
	$('#msgDiv').empty();
	
	if($('#supportSubject').val()==''){
		$('#msgDiv').text('제목을 입력하세요');
		$('#msgDiv').css('color','red');
		$('#msgDiv').css('font-size','8pt');
		$('#msgDiv').css('font-weight','bold');
		
	}else if($('#supportContent').val()==''){
		$('#msgDiv').text('내용을 입력하세요')
		$('#msgDiv').css('color','red')
		$('#msgDiv').css('font-size','8pt')
		$('#msgDiv').css('font-weight','bold');
		
	}else{
		$.ajax({
			type: 'post',
			url: '/JAVACOMICS/customerboard/boardReply',
			data: {
				'pseq': $('input[name=pseq]').val(), //원글번호
				'subject': $('#supportSubject').val(),
				'content': $('#supportContent').val(),
				'secretTF': $('#secretTF').val()
			},
			success: function(){
				alert('답글쓰기 완료');
				location.href='/JAVACOMICS/customerboard/customerboardList?pg='+$('input[name=pg]').val();
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});


</script>