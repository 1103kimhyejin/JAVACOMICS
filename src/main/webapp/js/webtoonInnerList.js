$(function(){
	$('.information').click(function(){
		location.href='/kakaowebtoon/webtoonInnerList/webtoonExplain.jsp';
	});
	
	$('.hidden').hide();
	$('.more').click(function(){
		$('.hidden').show();
		$('.more').hide();
	});
})