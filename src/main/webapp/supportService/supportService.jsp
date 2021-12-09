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
	<div id="supportPagingDiv"></div>
	<form id="supportSearchForm">
		<input type="hidden" name="pg" value="1"> <%--검색한 내용 1페이지부터 보여주기 위해서 BoardController 보낸다. --%>
		<div class="searchDiv">
			<select name="searchOption" id="searchOption">
				<option value="subject">제목</option>
				<option value="id">작성자</option>
			</select>
			<input type="text" name="searchBox" id="searchBox" placeholder="">
			<input type="button" id="searchBtn" value="검색">
		</div>
	</form>
	
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
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align: 'center',
					text: items.seq
				})).append($('<td/>',{
						align: 'left'
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
					
					var seq = $(this).parent().prev().text();
					location.href = '/JAVACOMICS/customerboard/customerboardView?seq='+seq+'&pg='+$('#pg').val();
					
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

function customerboardPaging(pg){
	var searchBox = document.getElementById('searchBox').value;
	if(searchBox==''){
		location.href = 'customerboardList?pg='+pg;
	}else{
		$('input[name=pg]').val(pg); //form 안에 pg의 값이 1로 고정되어 있기 때문에
		
		//1번인 경우
		$('#searchBtn').trigger('click'); //강제 이벤트 발생
		//만약 [2]페이지에서 다시 검색 버튼을 누르면 [2]페이지부터 검색이 시작된다.
		//다시 검색 버튼을 눌렀을 때 1페이지부터 검색을 할 수 있도록 pg를 바꿔주어야 한다.
		$('input[name=pg]').val(1);
		
		//2번인 경우
		//$('#boardSearchBtn').trigger('click', 'research'); //강제 이벤트 발생
		//만약 [2]페이지에서 다시 검색 버튼을 누르면 [2]페이지부터 검색이 시작된다.
		//다시 검색 버튼을 눌렀을 때 1페이지부터 검색을 할 수 있도록 pg를 바꿔주어야 한다.
		
	}
}
$('#searchBtn').click(function(){
	
	//2번인 경우
	//$('#boardSearchBtn').click(function(event, str){
//		if(str != 'research') $('input[name=pg]').val(1); //직접 검색 버튼을 클릭했을 때
		
		if($('#searchBox').val() == '')
			alert('검색어를 입력하세요');
		else{
			$.ajax({
				type: 'post',
				url: '/JAVACOMICS/customerboard/getSearchList',
				data: $('#supportSearchForm').serialize(),
				dataType: 'json',
				success: function(data){
					//alert(JSON.stringify(data));
					
					$('#supportListTable tr:gt(0)').remove();
					
					$.each(data.list, function(index, items){
						$('<tr/>').append($('<td/>',{
							align: 'center',
							text: items.seq
						})).append($('<td/>',{
								align: 'left'
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
					
					//페이징 처리
					$('#supportPagingDiv').html(data.customerboardPaging.pagingHTML);
				},
				error: function(err){
					console.log(err);
				}
			});//ajax
		}//if
	});
</script>