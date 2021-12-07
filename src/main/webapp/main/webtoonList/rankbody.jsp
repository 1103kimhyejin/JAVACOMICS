<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/rankList.css">
 
<div id= "rankWeb">
<input type="hidden" id="category">
	<div id= "rankBigBox">
		<div id = "rankBigBox1">
			<img src = "">
			
		</div>
		<div id = "rankBigBox2">
			<video autoplay loop muted playsinline>
			</video>
		</div>
		<div>
			<div id = "rankBigBox3">
				<!-- <p id ="rankNew">
				신작
				</p> -->
				<img src ="">
				<p id = "rankStory">
				</p>			
			</div>
		</div>
		
		<div class = "rankBigNum">
			<span class= "rankOne">1</span>
			<div class= "rankM">ㅡ</div>
		</div>
		<div id= "Transparency"></div>
	</div>
	<div id="rankType"></div>
	


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	if($("#category").val() == ''){	
		$.ajax({
			url: "/JAVACOMICS/webtoon/getRankBodyList",
			type: "post",
			data: 'category=전체',
			dataType: "json",
			success: function(data){
				
				
				$.each(data, function(index, items){
					
					
					if(index == 0){
						$("#rankBigBox1 > img").prop("src", "/JAVACOMICS/image/" + items.toonBg)
						$("#rankBigBox2 video").html('<source src="/JAVACOMICS/image/'+ items.toonVideo + '" type="video/webm">')
						$("#rankBigBox3 > img").prop("src", "/JAVACOMICS/image/" + items.type1stTitle)
						$("#rankStory").text(items.story1)
					}else{
					
						$("<div/>", {
							class: "rankBox",
							onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
							
						}).append($("<div/>", {
							class: "rankNum"
							
						}).append($("<span/>",{
							text: index+1
							
						}))).append($("<div/>", {
							class: "rankBox1"
							
						}).append($("<img/>", {
							src:"/JAVACOMICS/image/" + items.toonBg
							
						}))).append($("<div>", {
							class: "rankBox2"
							
						}).append($("<img/>", {
							src: "/JAVACOMICS/image/" + items.toonChar
							
						}))).append($("<div>", {
							class: "rankBox3"
							
						}).append($("<img/>", {
							src: "/JAVACOMICS/image/" + items.toonTitle
							
						}))).append($("<div/>", {
							id: "Transparency"
							
						})).appendTo($("#rankWeb"));
					}
				})
			},
			error: function(err){
				console.log(err);
			}
		})
	}
});	
</script>

