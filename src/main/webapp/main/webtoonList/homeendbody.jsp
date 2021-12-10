<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/homeendList.css">
 
<div id= "rankWeb">
	<div id= "rankBigBox">
		<div id = "rankBigBox1">
			<img src = "/JAVACOMICS/image/webtoonList/08.End/01/bg.jpg">
		</div>
		<div id = "rankBigBox2">
			<video autoplay loop muted playsinline>
					<source src="/JAVACOMICS/image/webtoonList/08.End/01/main.webm"
            				type="video/webm">
			</video>
		</div>
		<div>
			<div id = "rankBigBox3">
				<p id ="rankNew">
				추천
				</p>
				<img src ="/JAVACOMICS/image/webtoonList/08.End/01/title.png">
				<p id = "rankStory">
				당신의 살내음<br>
				그리고<br>
				그 여름밤의 향기
				</p>			
			</div>
		</div>
	
		<div id= "Transparency"></div>
	</div>
	

</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$.ajax({
		url: "/JAVACOMICS/webtoon/homeEndBody",
		type: "post",
		data: "end=완결",
		success: function(data){
			
			$.each(data, function(index, items){
					$("<div>", {
						class: "rankBox",
						onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=" + items.title +"'"
								
					}).append($("<div>", {
						class: "rankBox1"
						
					}).append($("<img>", {
						src: "/JAVACOMICS/image/" + items.toonBg
						
					}))).append($("<div>", {
						class: "rankBox2"
						
					}).append($("<img>", {
						src: "/JAVACOMICS/image/" + items.toonChar
						
					}))).append($("<div>", {
						class: "rankBox3"
						
					}).append($("<img>", {
						src: "/JAVACOMICS/image/" + items.toonTitle
						
					}))).append($("<div>", {
						id: "Transparency"
						
					})).appendTo($("#rankWeb"))
			});
		},
		error: function(err){
			console.log(err)
		}
	});
});
</script>