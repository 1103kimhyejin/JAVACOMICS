$(function(){
	//$('.information').click(function(){
		//location.href='/kakaowebtoon/webtoonInnerList/webtoonExplain.jsp';
	//});
	
	$('.hidden').hide();
	$('.more').click(function(){
		$('.hidden').show();
		$('.more').hide();
	});
	
	$('.information').css({"background-color":"transparent", "color":"#fff"});
	
	$('.top ul li').click(function(){
		$(this).css({"background-color":"#fff", "color":"black"})
		$('.top ul li').not($(this)).css({"background-color":"transparent", "color":"#fff"})
	});
})