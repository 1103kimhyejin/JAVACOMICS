$(function(){
	//$('.information').click(function(){
		//location.href='/kakaowebtoon/webtoonInnerList/webtoonExplain.jsp';
	//});
	
	$('.hidden').hide();
	$('.more').click(function(){
		$('.hidden').show();
		$('.more').hide();
	});
	
	$('.top ul:nth-child(2) li:nth-child(2)').css({"background-color":"transparent", "color":"#fff"});
	
	$('.top ul:nth-child(2) li').click(function(){
		$(this).css({"background-color":"#fff", "color":"black"})
		$('.top ul:nth-child(2) li').not($(this)).css({"background-color":"transparent", "color":"#fff"})
	});
})