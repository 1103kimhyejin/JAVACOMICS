<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JAVA COMICS</title>
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css"> 
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonInnerListCss/webtoonInnerList.css">
<link rel='icon' type='image/png' href='/JAVACOMICS/image/logo.png'>
</head>
<body>
<input type="hidden" id="webtoon_title" value="${param.title }"> 
<input type="hidden" id="toonMemId" value="${sessionScope.toonMemId }"> 
<header>
	<div class="back">
		<a><li><img src="/JAVACOMICS/image/webtoonInnerList/back.png"/></li></a>
	</div>
	<div class="heart">
		<li>
		<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
		  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
		</svg>
		</li>
	</div> 

	<div class="fillheart">
		<li>	
		<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
			<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
		</svg>
		</li>
	</div> 
	
	<div class="top">
		<ul>
			<li class="episode" id="episode">회차</li>
			<li class="information" id="information">작품 정보</li>
		</ul>	
	</div>
</header>

<section>
	<div id="container">
		<jsp:include page="webtoonImage.jsp" /> 
	</div>
	
	<div id="content">
		<c:if test="${empty display }"> 
			<jsp:include page="episode.jsp" />
		</c:if>
	
		<c:if test="${not empty display }"> 
			<jsp:include page="${display }" />
		</c:if>
	</div>
</section>

<footer>
	<button type="button" onclick="location.href='#'" class="scroll">
		<img src="/JAVACOMICS/image/webtoonInnerList/scrollicon.png" alt="스크롤">
	</button>
</footer>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/JAVACOMICS/js/webtoonInnerList.js"></script>
<script type="text/javascript">
$(function(){
 	//webtoonExplain, webtoonInnerList
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/getEpisode',
		data: 'title='+$('#webtoon_title').val(),
		dataType: "json",
		success: function(data){
			
			$("<div/>", { 
				class : "bg"
			}).append($("<img/>", {
				src: "../image/" + data.toonBg
			})).appendTo($(".imagebox"));
			
			$("<div/>", { 
				class : "mainimg"
			}).append($("<video autoplay loop muted playsinline/>"
				).append($("<source/>", {
				src: "../image/" + data.toonVideo,
				type: "video/webm"
			}))).appendTo($(".imagebox")); 
			
			$('.line>ul>li:first-child').text(data.title);
			
			$('.line>ul>li:nth-child(3)').text(data.writer);
			
			$('.line>ul>li:nth-child(6)').text(data.toonType);
			
			$('.line>ul>li:nth-child(8)').text(data.totalView);
			
			$('.line>ul>li:nth-child(10)').text(data.totalGood);
			
			//webtoonExplain
			
			if(data.toonEnd=='F'){
				$('.plot>ul>li:first-child').text("연재");
			}
			if(data.toonEnd=='T'){
				$('.plot>ul>li:first-child').text("완결");
				$('.plot>ul>li:first-child').css("background-color", "#8e8e8e");
				$('.plot>ul>li:nth-child(2)').hide();
			}
			
			$('.plot>ul>li:nth-child(2)').text(data.toonDay);
			$('.plot>ul>li:nth-child(4)').text(data.title);
			$('.plot>ul>li:nth-child(6)').text(data.writer);
			$('.plot>ul>li:nth-child(9)').text(data.artist);
			$('.visible>p').text(data.story1);
			$('.hidden>p').text(data.story2);
			$('.keyword ul>li:first-child').text(data.toonType);
			$('.keyword ul>li:nth-child(2)').text(data.keyword1);
			$('.keyword ul>li:nth-child(3)').text(data.keyword2);
			$('.keyword ul>li:nth-child(4)').text(data.keyword3);
			
			$('#trans').css("background-image", "linear-gradient(180deg,transparent,rgba("+data.listColor1+",9.9))");
			$('#content').css("background-color", "rgb("+data.listColor1+")");
			$('footer').css("background-color", "rgb("+data.listColor1+")");
			$('.webtoonList>a>div:first-child').css("background-color", data.listColor2);
			$('.explain').css("background-color", "rgb("+data.listColor1+")");
			
			$('.keyword ul>li').css("background-color", data.listColor2);
		},
		error: function(err){
			console.log(err);
		}
	});
 	
 	
 	//유사작품
 	$.ajax({
		url: "/JAVACOMICS/webtoon/getStorageBodybottom",
		type: "post",
		data: 'title='+$('#webtoon_title').val(),
		success: function(data){

			$.each(data, function(index, items){
				if(items.title != $('#webtoon_title').val() && index < 6){
					$("<div/>", {
						class: 'similartoonbox',
						onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=" + items.title +"'"
					}).append($("<div/>", {
						class: 'similartoonbox1'
					}).append($("<img/>", {
						src: "/JAVACOMICS/image/" + items.toonBg	
					}))).append($("<div/>", {
						class: "similartoonbox2"
					}).append($("<img/>", {
						src: "/JAVACOMICS/image/" + items.toonChar
					}))).append($("<div>", {
						class: "similartoonbox3"		
					}).append($("<img>", {
						src: "/JAVACOMICS/image/" + items.toonTitle		
					}))).append($("<div/>", {
						class: "Transparency"
					})).appendTo($(".similar"));
				}
			}); 
		},
		error: function(err){
			console.log(err)		
		}
		
	});

 	
 	
 	
 	
 	
 	//작품정보 클릭시 display include
	$('.information').click(function(){
		location.href='/JAVACOMICS/webtoonInnerList/webtoonExplain?title='+$('#webtoon_title').val();
	});
 	
 	//회차정보 클릭
 	$('.episode').click(function(){
		location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+$('#webtoon_title').val();
	});
 	
 	//episodeList
 	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/episodeList',
		data: 'title='+$('#webtoon_title').val(),
		dataType: "json",
		success: function(data){
			$.each(data, function(index, items){
				$("<div/>", {
					class: "list1",
					id: items.episode
				}).append($("<a/>", {
					//href: "/JAVACOMICS/webtoon/webtoonView.jsp?"+"episodeCode="+items.episodeCode+"&"+"title="+items.title		
				}).append($("<div/>", {
					class: "epImage"
				}).append($("<img/>", {
					src: "../image/" + items.thumbnail
				})))).append($("<div/>", {
					class: "epInfo",
					id: items.episodeCode
				}).append($("<span/>", {
					text: items.episode
					})).append($("<br/>")).append($("<span/>", {
						text: items.updateTime
						}))).append($("<div/>", {
							class: "epFree"
						}).append($("<span/>", {
							id : items.free
							}))).append($("<input>", {
								value : items.episodeCode,
								type: "hidden",
								id : "episodeCheck"
							})).appendTo($(".webtoonList"));	
								
				var free = $(".epFree span").attr("id");
				
				//무료 유료 회차 구분
				if(free=='F'){
					$(".epFree").removeClass();
					$(".epInfo").next().addClass("epPay");
				}				
				if(free=='T'){
					$(".epFree span").text('무료')
				}	 
		
				//첫화보기 클릭
				$('.webtoonList>a>div:first-child').click(function(){	
				 	location.href='/JAVACOMICS/webtoon/webtoonView.jsp?'+'episodeCode='+items.episodeCode+'&'+'title='+items.title
				});
				
				
			}); //each
			
			$('.epFree').parents('.list1').click(function(){	
				var episodeCode = $(this).children().next().attr("id");
				var title = $('#webtoon_title').val();
				location.href="/JAVACOMICS/webtoon/webtoonView.jsp?"+"episodeCode="+episodeCode+"&"+"title="+title		
			});
			
			//유료회차 클릭시 이용권 구매창 이동
			$('.epPay').parents('.list1').click(function(){	
				var episode = $(this).attr("id");
				var episodeCode = $(this).children().next().attr("id");
				episodeCode = parseFloat(episodeCode);
				var title = $('#webtoon_title').val();
				var id = $('#toonMemId').val();
				
				if(${sessionScope.toonMemId !=null }){					
				
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/webtoonInnerList/checkEpisodeBuy',
						data: 'id=' + $('#toonMemId').val() +'&episodeCode=' + episodeCode,
						dataType: "json",
						success: function(data){
							alert(JSON.stringify(data.cash));
							
							location.href="/JAVACOMICS/webtoon/webtoonView.jsp?"+"episodeCode="+episodeCode+"&"+"title="+title		
	
							
						},
						error: function(err){
							window.open("/JAVACOMICS/webtoonInnerList/episodeBuy.jsp?episode=" + episode+"&title="+title +"&episodeCode="+episodeCode, "EPISODE BUY", "width=400 height=600 top=200 left=700 scrollbars=yes");
						}
					});	
				}
	 		});
			
			$('.epPay').parents('.list1').click(function(){	
				if(${sessionScope.toonMemId == null }){
					alert("로그인 먼저 하세요");
					return false;	
				}
			});
			
			
			$('.epFree').parents('.list1').click(function(){
				
				if(${toonMemId != null}){					
					$.ajax({
						url: "/JAVACOMICS/webtoon/updateRecent",
						type: "post",
						data: "episodeCode=" + $(this).find(".epFree").next().val(),
						success: function(data){
							alert("123")
						},
						error: function(err){
							
						}
					});
				}
					
			});
			
		},
		error: function(err){
			console.log(err);
		}
	}); 	
});


//조회수를 위한 쿠키 생성 -hj
$.ajax({
		type: 'post',
		url: '/JAVACOMICS/episodeGoodView/cookie',
		success: function(){
			//alert('쿠키생성');
		},
		error: function(err){
			alert('쿠키생성에러');
		}
});

</script>
</body>
</html>