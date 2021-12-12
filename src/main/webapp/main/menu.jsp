<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/menu.css">

<div id="menubar">
	<div class="mymenu">
		<ul>
			<li><a href="/JAVACOMICS/search/searchMenu.jsp"><img src="/JAVACOMICS/image/searchBtn.svg"></a></li>
			<li><img src="/JAVACOMICS/image/menuBtn.svg"></li>
		</ul>
	</div>
	<div class="mainmenu slider">
		<input type="hidden" id="showhide" value="${display  }">
		<div><img src="/JAVACOMICS/image/mainbody/homeLogo.svg" alt="kakao_webtoon"></div>
		<div>웹툰</div>
		<div>랭킹</div>
		<div>보관함</div>
	</div>
	<div class="submenu">
		<ul class="toonList hide">
			<li>월</li>
			<li>화</li>
			<li>수</li>
			<li>목</li>
			<li>금</li>
			<li>토</li>
			<li>일</li>
			<li>완결</li>
		</ul>
		<ul class="ranking hide">
			<li>전체</li>
			<li>판타지</li>
			<li>로맨스</li>
			<li>무협/액션</li>
			<li>드라마</li>
			<li>코믹/일상</li>
		</ul>
		<ul class="myBox hide">
			<li>최근감상</li>
			<li>구매작품</li>
		</ul>
	</div>
	


</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

$('.mainmenu div:eq(3)').click(function(){
	
	$('.submenu .toonList').addClass('hide');
	$('.submenu .ranking').addClass('hide');
	$('.submenu .myBox').removeClass('hide');
	
	if(${toonMemId == null}){
		alert("먼저 로그인하세요")
	}else if($('#display').val() != "main/webtoonList/storagebody.jsp"){
		$(location).attr("href", "/JAVACOMICS/webtoon/storagebody");
	}
});


$('.toonList li:eq(7)').click(function(){
	$('.submenu .ranking').addClass('hide');
	$('.submenu .myBox').addClass('hide');
	$('.submenu .toonList').removeClass('hide');
	
	if($('#display').val() != "main/webtoonList/homeendbody.jsp"){
		$(location).attr("href", "/JAVACOMICS/webtoon/homeendbody");
	}
});

</script>