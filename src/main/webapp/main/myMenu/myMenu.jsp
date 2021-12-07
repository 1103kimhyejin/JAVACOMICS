<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/myMenu.css">   
    
<div class="myMenu">

	<div class="backBtn"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<div class="contentsdiv">
		<div class="membernamediv" href="#">${sessionScope.toonMemName } ></div><!-- 내 정보 표시 자리 -->
		<div class="cashdiv">
			<img src="/JAVACOMICS/image/myMenu/cash.svg"><span class="cashspan"></span>
		</div>
		<div class="spandiv">
			<div><a href="#" id="kakaoLogoutBtn">로그아웃    </a></div>
			<div><a href="#">캐시 충전     </a></div>
			<div><a href="#">충전 내역     </a></div>
			<div><a href="/JAVACOMICS/customerboard/customerboardList">고객센터      </a></div>
		</div>
	</div>	
	<div class="bottomdiv">
		<video src="/JAVACOMICS/image/myMenu/VIP.mp4" height=200 width=250 loop autoplay="" muted="" ></video>
		<div>최대 10% 캐시백</div>
		<div>CASH PASS VIP</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
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
});


</script>