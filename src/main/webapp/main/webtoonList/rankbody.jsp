<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/rankList.css">
 
<div id= "rankWeb">
	<div id= "rankBigBox">
		<div id = "rankBigBox1">
			<img src = "image/rankbody/rankbigbg.jpg">
			<img src = ${aaa }>
			
		</div>
		<div id = "rankBigBox2">
			<video autoplay loop muted playsinline>
					<source src="image/rankbody/rankbigimg.webm"
            				type="video/webm">
			</video>
		</div>
		<div>
			<div id = "rankBigBox3">
				<p id ="rankNew">
				신작
				</p>
				<img src ="image/rankbody/rankbigimg.png">
				<p id = "rankStory">
				오해를 딛고 불완전한 서로를 보듬고<br>
				함께 성장하는 가족의 이야기.
				</p>			
			</div>
		</div>
		
		<div class = "rankBigNum">
			<span class= "rankOne">1</span>
			<div class= "rankM">ㅡ</div>
		</div>
		<div id= "Transparency"></div>
	</div>
	
	
<!--
 	<div class= "rankBox">
		<div class = rankNum>
			<span>2</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/05/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/05/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/05/title.png">
		</div>
		<div id= "Transparency"></div>
	</div>
-->
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$.ajax({
		url: "/JAVACOMICS/webtoon/getRankBodyList",
		type: "post",
		dataType: "json",
		success: function(data){
			alert(JSON.stringify(data));
			
			$.each(data, function(index, items){
				$("<div/>", {
					class: "rankBox",
					onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
		                  
					
				}).append($("<div/>", {
					class: "rankNum"
					
				}).append($("<span/>",{
					text: index+2
					
				}))).append($("<div/>", {
					class: "rankBox1"
					
				}).append($("<img/>", {
					src:"image/" + items.toonBg
					
				}))).append($("<div>", {
					class: "rankBox2"
					
				}).append($("<img/>", {
					src: "image/" + items.toonChar
					
				}))).append($("<div>", {
					class: "rankBox3"
					
				}).append($("<img/>", {
					src: "image/" + items.toonTitle
					
				}))).append($("<div/>", {
					id: "Transparency"
					
				})).appendTo($("#rankWeb"));
			})
			
		},
		error: function(err){
			console.log(err);
		}
	})
});	
</script>

