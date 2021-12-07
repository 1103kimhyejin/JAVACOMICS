$(function(){
	//webtoonExplain 더보기
	$('.hidden').hide();
	$('.more').click(function(){
		$('.hidden').show();
		$('.more').hide();
	});
	
	//webtoonInnerList 상단부분 회차, 작품정보버튼 클릭 이벤트
	$('.information').css({"background-color":"transparent", "color":"#fff"});
	
	$('.top ul li').click(function(){
		$(this).css({"background-color":"#fff", "color":"black"})
		$('.top ul li').not($(this)).css({"background-color":"transparent", "color":"#fff"})
	});
	
	//webtoonInnerList 상단부분 좋아요 클릭 이벤트
	$('.fillheart').hide();
	
	$('.heart').click(function(){
		$(this).hide();
		$('.fillheart').show();
	});
	
	$('.fillheart').click(function(){
		$(this).hide();
		$('.heart').show();
	});

})