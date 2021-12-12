$(function(){

	//onload hide 확인
	if($('#hideBox').val()=="o"){
		$('#fullscreen').removeClass('hide');
	}



	$('.mainmenu div:eq(0)').click(function(){
		$('.submenu .ranking').addClass('hide');
		$('.submenu .myBox').addClass('hide');
		$('.submenu .toonList').addClass('hide');
		
		if($('#display').val() != "main/body.jsp"){
			$(location).attr("href", "/JAVACOMICS/webtoon/mainpage");
		}
		
	});
	$('.mainmenu div:eq(1)').click(function(){
		$('.submenu .ranking').addClass('hide');
		$('.submenu .myBox').addClass('hide');
		$('.submenu .toonList').removeClass('hide');
		//alert($('#display').val());
		
		if($('#display').val() != "main/webtoonList/homebody.jsp"){
			$(location).attr("href", "/JAVACOMICS/webtoon/homebody");
		}
		
	});
	$('.mainmenu div:eq(2)').click(function(){
		$('.submenu .myBox').addClass('hide');
		$('.submenu .toonList').addClass('hide');
		$('.submenu .ranking').removeClass('hide');
		
		if($('#display').val() != "main/webtoonList/rankbody.jsp"){
			$(location).attr("href", "/JAVACOMICS/webtoon/rankbody");
		}
		
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
	
	$('.backBtn2').click(function(){
		$(location).attr("href", "/JAVACOMICS/menu/backmenu");
	});
	
	$('.backBtnSupport').click(function(){
		$(location).attr("href", "/JAVACOMICS/customerboard/customerboardList?pg="+$('#pg').val());
	});
	$('.backBtnSupportView').click(function(){
		$(location).attr("href",  "/JAVACOMICS/customerboard/customerboardView?seq="+$('#seq').val()+"&pg="+$('#pg').val());
	});

	
	//로그인 
	$('#memberLoginBtn').click(function(){
		
		$('#loginDiv').empty();
		
		if($('#loginId').val() == ''){
			$('#loginDiv').text('아이디 입력');
			$('#loginDiv').css('color', 'red');
			$('#loginDiv').css('font-size', '14pt');
			$('#loginDiv').css('font-weight', 'bold');
			
		}else if($('#loginPwd').val() == ''){
			$('#loginDiv').text('비밀번호 입력');
			$('#loginDiv').css('color', 'red');
			$('#loginDiv').css('font-size', '14pt');
			$('#loginDiv').css('font-weight', 'bold');
			
		}else{
			$.ajax({
				type : 'post',
				url: '/JAVACOMICS/toonmember/login',
				data: {
					'id': $('#loginId').val(),
					'pwd': $('#loginPwd').val()
				},
				dataType: 'text',
				success: function(data){
					if(data == 'success'){
						location.href = '/JAVACOMICS/index.jsp';
					}else{
						alert('로그인 실패');
					}
				},
				error: function(err){
					console.log(err);
				}
			});
		}
	});
	
 
	
	//회원가입
	$('#memberWriteBtn').click(function(){
		$('#memberWriteForm .msgDiv').empty();
		
		if($('#memberWriteForm #name').val() == ''){
			$('#memberWriteForm .msgDiv').text('이름을 입력해주세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
			
		}else if($('#memberWriteForm #id').val() == ''){
			$('#memberWriteForm .msgDiv').text('아이디를 입력해주세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
			
		}else if($('#memberWriteForm #pwd').val() == ''){
			$('#memberWriteForm .msgDiv').text('비밀번호를 입력해주세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
		
		}else if($('#memberWriteForm #pwd').val() != $('#memberWriteForm #pwd2').val()){
			$('#memberWriteForm .msgDiv').text('비밀번호가 맞지 않습니다');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
		
		}else if($('#memberWriteForm #email').val() == ''){
			$('#memberWriteForm .msgDiv').text('이메일을 입력해주세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
			
		}else if($('#check').val() != $('#memberWriteForm #id').val()){
			$('#memberWriteForm .msgDiv').text('중복체크 하세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
		}else if($('#confirm').val() != $('#confirmNumber').val() || $('#confirm').val() == ""){
			$('#memberWriteForm .msgDiv').text('이메일 인증 번호를 다시 확인해주세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
		} else{
			$.ajax({
				type: 'post',
				url: '/JAVACOMICS/toonmember/toonMemberWrite',
				data: $('#memberWriteForm').serialize(),
				success: function(){
					alert('회원가입을 축하합니다');
					location.href = '/JAVACOMICS/index.jsp';
				},
				error: function(err){
					console.log(err);
				}
			});
		}
		
		
	});

	//회가입중 아이디 중복 확인
	$('#memberWriteForm #id').focusout(function(){
		$('#memberWriteForm .msgDiv').empty();
			
		if($('#memberWriteForm #id').val() == ''){
			$('#memberWriteForm .msgDiv').text('아이디를 입력하세요');
			$('#memberWriteForm .msgDiv').css('color', 'red');
			$('#memberWriteForm .msgDiv').css('font-size', '14pt');
			$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
			
		}else{
			$.ajax({
				type: 'post',
				url: '/JAVACOMICS/toonmember/checkId',
				data: 'id='+$('#memberWriteForm #id').val(),
				dataType: 'text',
				success: function(data){
					if(data == 'exist'){
						$('#memberWriteForm .msgDiv').text('중복된 ID입니다');
						$('#memberWriteForm .msgDiv').css('color', 'red');
						$('#memberWriteForm .msgDiv').css('font-size', '14pt');
						$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
						
					}else if(data == 'non_exist'){
						$('#memberWriteForm .msgDiv').text('ID 사용 가능');
						$('#memberWriteForm .msgDiv').css('color', 'red');
						$('#memberWriteForm .msgDiv').css('font-size', '14pt');
						$('#memberWriteForm .msgDiv').css('font-weight', 'bold');
						
						$('#check').val($('#memberWriteForm #id').val());
					}
				},
				error: function(err){
					console.log(err);
				}
			});
		}//if
	});
	
	
	//회원가입페이지로 이동
	$('#memberWriteFormBtn').click(function(){
		$(location).attr("href", "/JAVACOMICS/toonmember/memberWriteForm")
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
	
	
/*	if($("#showhide").val() != "main/webtoonList/homebody.jsp"){
		$('.mainmenu div:eq(1)').click(function(){
			location.href = "/JAVACOMICS/webtoon/homebody"
		});
	}
	
	if($("#showhide").val() != "main/webtoonList/rankbody.jsp"){
		$('.mainmenu div:eq(2)').click(function(){
			location.href = "/JAVACOMICS/webtoon/rankbody"
		});
	}
*/	

})

//주희추가
$('#container_inner .mainbody:first-child').click(function(){
	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=나%20혼자만%20레벨업';
});

$('#container_inner .mainbody:nth-child(2)').click(function(){
	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=쓰레기%20머학생';
});

$('#container_inner .mainbody:nth-child(3)').click(function(){
	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=블랙윈터';
});

$('#container_inner .mainbody:last-child').click(function(){
	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=내가%20죽였다';
});