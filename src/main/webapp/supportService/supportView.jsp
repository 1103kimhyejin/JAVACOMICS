<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/JAVACOMICS/css/supportCss/supportView.css">

<div class="supportView">
	<div class="backBtnSupport"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<form id="supportViewForm" action="">
		<input type="hidden" id="seq" name="seq" value="${requestScope.seq }">
		<input type="hidden" id="pg" name="pg" value="${requestScope.pg }">
		<table>
			<tr>
				<td colspan="3"><h3><span id="subjectSpan"></span></h3></td>
			</tr>
			
			<tr>
				<td >글번호 : <span id="seqSpan"></span></td>
				<td >작성자 : <span id="idSpan"></span></td>
			</tr>
			
			
			
			
			<tr>
				<td colspan="3" height="200" valign="top">
					<pre>
						<span id="contentSpan">
							
						</span>
					</pre>
				</td>
			</tr>
		</table>
		
		<input type="button" id="customerboardListBtn" value="목록" 
		onclick="location.href='customerboardList?pg=${pg}'">
		<input type="button" id="boardModify" value="글수정" onclick="">
		<span id="supportViewSpan">
		
			<input type="button" id="boardDelete" value="글삭제" onclick="">
			<input id="replyBtn" type="button" value="답글"
		onclick="location.href='boardReplyForm.do?seq=${seq}&pg=${pg}'">
		</span>
		
	</form>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/customerboard/getCustomerboard',
		data: 'seq='+$('#seq').val(),
		dataType : 'json',
		success : function(data){
			//console.log(data);
			
			$('#subjectSpan').text(data.customerboardDTO.subject);
			$('#seqSpan').text(data.customerboardDTO.seq);
			$('#idSpan').text(data.customerboardDTO.id);
			$('#contentSpan').text(data.customerboardDTO.content);
			
			if(data.toonMemId == data.customerboardDTO.id || data.toonMemId == 'manager_001')
				$('#supportViewSpan').show();
			else
				$('#supportViewSpan').hide();
			
			if(data.toonMemId == data.customerboardDTO.id){
				$('#boardModify').show();
			} else {
				$('#boardModify').hide();
			}
			
		},
		error: function(err){
			console.log(err);
		}
	});
	
	
});
$('#boardModify').click(function(){
	location.href = '/JAVACOMICS/customerboard/boardModifyForm?seq='+$('#seq').val()
			+'&pg='+$('#pg').val();
	
});

$('#boardDelete').click(function(){
	location.href = '/JAVACOMICS/customerboard/boardDelete?seq='+$('#seq').val();
	
});
</script>


