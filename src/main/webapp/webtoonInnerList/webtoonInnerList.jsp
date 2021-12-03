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
</head>
<body>
<input type="hidden" id="webtoon_title" value="${param.title }"> 
<header>
	<div class="back">
		<a href="/JAVACOMICS/index.jsp"><li><img src="/JAVACOMICS/image/webtoonInnerList/back.png"/></li></a>
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
			<jsp:include page="webtoonExplain.jsp" /> 
		</c:if>
		<%-- <c:if test="${not empty display }"> 
			<jsp:include page="${display }" />
		</c:if> --%>
		<c:if test="${not empty display }"> 
			<jsp:include page="episode.jsp" />
		</c:if>
	</div>
	
	<button type="button" onclick="location.href='#'" class="scroll">
		<img src="/JAVACOMICS/image/webtoonInnerList/scrollicon.png" alt="스크롤">
	</button>
	
</section>

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
			/* video/나만아는사랑.webm
			video/내일도출근!.webm
			video/대마법사의딸.webm
			video/마존현세_강림기.webm
			video/바리공주.webm
			video/밤의새벽.webm
			video/아비무쌍.webm
			video/유부녀킬러.webm
			video/이미테이션.webm
			video/풍운객잔.webm
			video/학사재생.webm */
			
			alert(JSON.stringify(data));
			
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
		},
		error: function(err){
			console.log(err);
		}
	});
 	
 	
 	//episodeList
 	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/episodeList',
		data: 'title='+$('#webtoon_title').val(),
		dataType: "json",
		success: function(data){
			alert(JSON.stringify(data));
		},
		error: function(err){
			console.log(err);
		}
	});
 	
});
</script>
</body>
</html>