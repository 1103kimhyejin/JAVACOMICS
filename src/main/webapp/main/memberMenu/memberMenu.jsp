<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/memberMenu.css">   
<input type="hidden" id="id" name="id" value="${sessionScope.toonMemId }"> <!-- 주희추가 -->    
<div class="memberMenu">

	<div class="backBtn2"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<div class="contentsdiv">
		<div class="membernamediv" href="#">${sessionScope.toonMemName }님의 페이지</div><!-- 내 정보 표시 자리 -->
		
		<div class="spandiv">
			<div><a href="#" id="kakaoLogoutBtn">로그아웃    </a></div>
			<div><a href="/JAVACOMICS/toonmember/memberModifyForm">회원정보 수정     </a></div>
			<div id="deleteBtn"><a href="#">회원탈퇴      </a></div>
		</div>
	</div>	
	

	
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$('#deleteBtn').click(function(){
	if(confirm("탈퇴하시면 모든 정보가 삭제됩니다. 정말 탈퇴하시겠습니까?") == true){
		$.ajax({
			type: 'get',
			url: '/JAVACOMICS/toonmember/memberDelete',
			data: 'id='+'${sessionScope.toonMemId }',
			success: function(){
				location.href = '/JAVACOMICS/webtoon/mainpage';
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});
</script>