  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/storageList.css">


<div class = "storageListBox">	<!--컨테이너 안에서 보관함 박스  -->
	<div id = "watchingList">	<!-- 보관함박스 안에 리스트박스  -->
		<div id = "watchingListTitle">	<!-- 리스트박스 안에 큰제목  -->
			<div class = "watchingListTitle1">
				<p id = "watchingmemId"></p>
			</div>
			
			<div class = "watchingListTitle2">
				<p class ="randomTitle" ></p>
			</div>
				<p></p>
			<div class = "watchingListTitle3">
				<p>즐겨보니까</p>
			</div>
		</div>
		
		<div id = "watchingListBigBox">	<!-- 리스트박스 안에 큰박스  -->
		
		</div>
	</div>
	
	
	
	<div id = "similarList">	<!-- 컨테이너 안에서 유사리스트  -->
	
		<div id= "similarListTitle" > <!--유사 리스트안에 큰제목  -->
			<div class = "similarListTitle1">
				<p class ="randomTitle" id="randomTitle"></p>
			</div>
			
			<div class = "similarListTitle2">
				<p>그림체와 유사한</p>
			</div>
			
			<div class = "similarListTitle3">
				<p>작품 어떠세요?</p>
			</div>
		</div>
		
		<div id= "similarListBigBox"> <!--유사 리스트 안에 큰박스  -->
		
						
		</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$(document).scroll(function(){
		if($(document).scrollTop() > 100){
			$("#watchingListBigBox #watchingListBox").css("transform", "translateY(0px)")
			
		}
	});
	$.ajax({
		url: "/JAVACOMICS/webtoon/getStorageBodyList",
		type: "post",
		data: 'id=${toonMemId}',
		success: function(data){
			
			$.each(data.list, function(index, items){
				
				if(data.random == index){
					$(".randomTitle").text(items.title)
				}
				
				$("#watchingmemId").text("${toonMemId}님은")
				
				$("<div>", {
					id: 'watchingListBox',
					class: items.title
					
				}).append($("<div>", {
					id: "watchingListTopBox",
					style: "background-color: "+ "rgb("+items.listColor1+")"
					
				}).append($("<div>", {
					id: "watchingListTopTitle"
					
				}).append($("<p>", {
					text: items.episode
					
				})))).append($("<div>", {
					id: "watchingListBottomBox",
					style: "background-color: "+ "rgb("+items.listColor1+")"
					
				}).append($("<div>", {
					id: "watchingListBottomBox1"
					
				}).append($("<img>", {
					src: "/JAVACOMICS/image/"+items.toonChar
					
				}))).append($("<div>", {
					id: "Transparency"
					
				})).append($("<div>", {
					id: "watchingListBottomBox2"
					
				}).append($("<img>", {
					src: "/JAVACOMICS/image/" + items.toonTitle
					
				})))).appendTo($("#watchingListBigBox"));
				
				$("#watchingListBigBox #watchingListBox:nth-child("+(index+1)+")").css("transform", "translateY("+(index%4*60)+"px)")

				
				
				
			});
			
			$.ajax({
				url: "/JAVACOMICS/webtoon/getStorageBodybottom",
				type: "post",
				data: "title="+ $("#randomTitle").text(),
				success: function(data){


					$.each(data, function(index, items){
						if(items.title != $("#randomTitle").text() && index < 17){

							$("<div>", {
								id: 'similarListBox'
							}).append($("<div>", {
								class: "similarListBox1"
								
							}).append($("<img>", {
								src : "/JAVACOMICS/image/" +items.toonBg
							
							}))).append($("<div>", {
								class: "similarListBox2"
								
							}).append($("<img>", {
								src: "/JAVACOMICS/image/" + items.toonChar
								
							}))).append($("<div>", {
								id: "Transparency"
								
							})).append($("<div>", {
								class: "similarListBox3"
								
							}).append($("<img>", {
								src: "/JAVACOMICS/image/" + items.toonTitle
								
							}))).appendTo($("#similarListBigBox"));
						}
					});
					
					
				},
				error: function(err){
					console.log(err)		
				}
				
			});
			
			
		},
		error: function(err){
			console.log(err)		
		}
	})
	
	
	

	
});


</script>