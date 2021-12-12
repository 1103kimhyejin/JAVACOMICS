<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/searchMenu.css"> 
<link rel='icon' type='image/png' href='/JAVACOMICS/image/logo.png'>
</head>
<body>

<div class="searchMenu">
	<div class="backBtn2"><a href="/JAVACOMICS/webtoon/mainpage"><img src="/JAVACOMICS/image/backicon.PNG"></a></div>
	<div class="searchArea">
		<p>어떤 작품을 찾으세요?</p>
		<div class = "searchName">
			<input type="text" id="keyword" placeholder="작품, 작가, 장르를 입력하세요">
			<div class="searchBtn"><img src="/JAVACOMICS/image/searchBtn.svg"></div>
		</div>
	</div>
	
	<div class="searchToon">

	</div>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

$('.searchBtn').click(function(){
	if($('#keyword').val() == ""){
		alert('검색어를 입력해주세요');
	} else{
		$.ajax({
			type: 'post',
			url: '/JAVACOMICS/webtoon/getSearchKeyword',
			data: 'keyword='+$('#keyword').val(),
			dataType: 'json',
			success: function(data){
				
				$(".searchToon").empty();
				
				if(data == ''){
					alert('연관 작품이 없습니다');
				}
				
				$.each(data, function(index, items){
					$("<div/>", {
						class: "box",
						id: items.title
						
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "/JAVACOMICS/image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "/JAVACOMICS/image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "/JAVACOMICS/image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($(".searchToon"));	
				});
				
				
			},
			error: function(err){
				console.log(err);
			}
		});//ajax
	}
});

</script>

</body>
</html>