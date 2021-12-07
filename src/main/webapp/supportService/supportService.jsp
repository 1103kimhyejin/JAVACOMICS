<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/supportCss/supportService.css">

<div class="supportService">
	<div class="backBtn2"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<input type="hidden" id="pg" value="${requestScope.pg }">
	<table id="supportListTable">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		<!-- <tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>이러이러한 문제가 발생하여 문의합니다 해결해 주세요</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr> -->
		
	</table>
	<input type="button" id="customerboardWriteFormBtn" value="글쓰기">
	<div style="width: 750px; text-align: center;" id="supportPagingDiv"></div>
	<div class="searchDiv">
		<input type="text" id="searchBox" placeholder="">
		<input type="button" id="searchBtn" value="검색">
	</div>
	
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$('#customerboardWriteFormBtn').click(function(){
	$(location).attr("href", "/JAVACOMICS/customerboard/customerboardWriteForm")
	
});


$(function(){
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/customerboard/getCustomerboardList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			alert(JSON.stringify(data));
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align: 'center',
					text: items.seq
				})).append($('<td/>',{
					
					}).append($('<a/>',{
						href: '#',
						text: items.subject,
						id: 'subjectA',
						class: 'subject_'+items.seq
					}))
				).append($('<td/>',{
					align: 'center',
					text: items.id
				})).append($('<td/>',{
					align: 'center',
					text: items.logtime
				})).append($('<td/>',{
					align: 'center',
					text: items.hit
				})).appendTo($('#supportListTable'));
				
				//답글
				for(var i=1; i<=items.lev; i++){
					$('.subject_'+items.seq).before('&emsp;')
				}
				if(items.pseq != 0){
					$('.subject_'+items.seq).before($('<img/>',{
						src: '/JAVACOMICS/image/reply.gif'
					}));
				}//if
				
				//로그인 여부 - 1번
				/*
				$('.subject_'+items.seq).click(function(){
					if(data.memId == null){
						alert("먼저 로그인하세요");
					}else{
						location.href = '/spring/board/boardView?seq='+items.seq+'&pg='+$('#pg').val();
					}
				});
				*/
				
			});//each
			
			//로그인 여부 - 2번
			//$('#boardListTable').on('click', '#subjectA', function(){
			$(document).on('click', '#subjectA', function(){
				//alert($(this).parent().prev().prop('tagName'));
				
				if(data.toonMemId == null){
					alert("먼저 로그인하세요");
				}else{
					/*
					var seq = $(this).parent().prev().text();
					location.href = '/JAVACOMICS/customerboard/boardView?seq='+seq+'&pg='+$('#pg').val();
					*/
				}
			});
			
			//페이징 처리
			$('#supportPagingDiv').html(data.customerboardPaging.pagingHTML);
		},
		error: function(err){
			console.log(err);
		}
	});
});



</script>