$(function(){

	
	
	$('.mainmenu div:eq(0)').click(function(){
		$('.submenu .ranking').addClass('hide');
		$('.submenu .myBox').addClass('hide');
		$('.submenu .toonList').addClass('hide');
	});
	$('.mainmenu div:eq(1)').click(function(){
		$('.submenu .ranking').addClass('hide');
		$('.submenu .myBox').addClass('hide');
		$('.submenu .toonList').removeClass('hide');
	});
	$('.mainmenu div:eq(2)').click(function(){
		$('.submenu .myBox').addClass('hide');
		$('.submenu .toonList').addClass('hide');
		$('.submenu .ranking').removeClass('hide');
	});
	$('.mainmenu div:eq(3)').click(function(){
		$('.submenu .toonList').addClass('hide');
		$('.submenu .ranking').addClass('hide');
		$('.submenu .myBox').removeClass('hide');
	});
	
	$('.mainmenu div').click(function(){
		$(this).css("opacity","1");
		$('.mainmenu div').not($(this)).css("opacity","0.5");
	});
	
	$('.toonList li').click(function(){
		$(this).css({"background-color":"#fff", "color":"black"})
		$('.toonList li').not($(this)).css({"background-color":"transparent", "color":"#fff"})
	});
	$('.ranking li').click(function(){
		$(this).css({"background-color":"#fff", "color":"black"})
		$('.ranking li').not($(this)).css({"background-color":"transparent", "color":"#fff"})
	});
	$('.myBox li').click(function(){
		$(this).css({"background-color":"#fff", "color":"black"})
		$('.myBox li').not($(this)).css({"background-color":"transparent", "color":"#fff"})
	});
	
	$('.mymenu ul li:eq(1)').click(function(){
		$('#fullscreen').removeClass('hide');
	});
	
	$('.backBtn').click(function(){
		$('#fullscreen').addClass('hide');
	});

	


	var slider = $('.slider');  	
	$(window).resize(function(){
	        var win_w = $(window).width()
	        if (win_w >= 1300){
	            
	        } else if (win_w >= 1024 && win_w < 1300){
	            
	        } else if (win_w >= 768 && win_w < 1024){
	            
	        } else {
	           $('.slider').slick({ 
					responsive: [ // 반응형 웹 구현 옵션
								
								{ 
									breakpoint: 768, //화면 사이즈 768px
									settings: {	
										//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
										slidesToShow: 1, 
										draggable : true,
										setPosition: 0,
										infinite: true,
										autoplay: false,
										centerMode: true,
										centerPadding: 0
									} 
								}
							]
			
				});
	        }
	        
	        
	        
	   }).resize()

	$('.submenu .toonList li:eq(1)').click(function(){
		
	});
	

})