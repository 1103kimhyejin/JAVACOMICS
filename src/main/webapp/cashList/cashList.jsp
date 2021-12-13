<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JAVACOMICS</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/cashList.css">
<link rel='icon' type='image/png' href='/JAVACOMICS/image/logo.png'>
</head>
<body>
<div class="backBtn2"><img src="/JAVACOMICS/image/backicon.PNG"></div>
<input type="hidden" id="toonMemId" value="${sessionScope.toonMemId }">
<div class="cashInfo">
	
	<h1>캐시 내역</h1>
	<div class="myInfo">
		<img src="/JAVACOMICS/image/myMenu/cash.svg">
		<span class="cashspan">10000 </span>
		<div class="charge">충전</div>
	</div>
	<div class="cashBack">
		<p>
			CASH PASS VIP</br>
			신청하면 최대 10% 캐시백
		</p>
		<video src="/JAVACOMICS/image/myMenu/VIP.mp4" loop autoplay="" muted="" ></video>
	</div>
	<div class="useList">
		<div class="useCash">캐시</div>
		<div class="useEpisode">사용내역</div>
		<div class="useTime">사용일</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script>
$(function(){
	$.ajax({
		type: 'get',
		url: '/JAVACOMICS/toonmember/cashcheck',
		data: 'id='+'${sessionScope.toonMemId }',
		dataType: 'text',
		success: function(data){
			$('.cashspan').text(data);
		},
		error: function(err){
			console.log(err);
		}
	});
	
	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/getCashInfo',
		data: 'id='+$('#toonMemId').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$.each(data, function(index, items){
				//alert(items.CASH);
				if(items.TITLE == null){
					items.TITLE = '캐시'
				}
				if(items.EPISODE == null){
					items.EPISODE = '충전'
				}
				
				$("<div/>",{
					class: 'useList'
				}).append($("<div/>",{
					class: 'useCash',
					text: items.CASH
				})).append($("<div/>",{
					class: 'useEpisode',
					text: items.TITLE+" "+items.EPISODE
				})).append($("<div/>",{
					class: 'useTime',
					text: moment(items.LOGTIME).format("YYYY-MM-DD")
				})).appendTo($('.cashInfo'));
				
		
				
			});//each
			
			
		},
		error: function(err){
			console.log(err);
		}
	});
	
});

$('.backBtn2').click(function(){
	$(location).attr("href", "/JAVACOMICS/menu/backmenu");
});
$('.charge').click(function(){
	var id= $('#toonMemId').attr("value");
	//alert(id);
	window.open("/JAVACOMICS/webtoonInnerList/webtoonPay?id="+id, "JAVACOMICS Pay", "width=400 height=600 top=200 left=700 scrollbars=yes");
});


</script>

</body>
</html>