$(function(){

	//webtoonExplain 더보기
	$('.hidden').hide();
	$('.more').click(function(){
		$('.hidden').show();
		$('.more').hide();
	});
	
	//webtoonInnerList 상단부분 회차, 작품정보버튼 클릭 이벤트
	//$('.information').css({"background-color":"transparent", "color":"#fff"});
	
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

	//결제창
	$('.btnPayNext').click(function(){
		$(this).css({"background-color":"white", "color":"black", "border":"1px solid white"});
	});
	
	
	//radio버튼 클릭시 값 확인 => db들어갈 값
	//var check = $("input[name='item_id']:checked").val();
	//alert(check);
		
	//$('input[name=item_id]').click(function(){
		//var check = $("input[name='item_id']:checked").val();
		//alert(check);	
	//});
	
	$('.back').click(function(){	

		if(document.referrer.split('8080')[1].substr(0,35) == '/JAVACOMICS/webtoon/homebody'){
			history.back();
		}else{
			location.href='/JAVACOMICS/webtoon/homebody';
		}
		
		if(document.referrer.split('8080')[1].substr(0,35) == '/JAVACOMICS/webtoon/rankbody'){
			history.back();
		}else{
			location.href='/JAVACOMICS/webtoon/rankbody';
		}
		
		if(document.referrer.split('8080')[1].substr(0,35) == '/JAVACOMICS/webtoon/mainpage'){
			history.back();
		}else{
			location.href='/JAVACOMICS/webtoon/mainpage';
		}
		
	});
	
});