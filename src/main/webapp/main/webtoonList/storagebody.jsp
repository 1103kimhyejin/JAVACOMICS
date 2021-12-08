  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/storageList.css">


<div class = "storageListBox">	<!--컨테이너 안에서 보관함 박스  -->
	<div id = "watchingList">	<!-- 보관함박스 안에 리스트박스  -->
		<div id = "watchingListTitle">	<!-- 리스트박스 안에 큰제목  -->
			<div class = "watchingListTitle1">
				<p>최근에는</p>
			</div>
			
			<div class = "watchingListTitle2">
				<p id ="randomTitle" ></p>
			</div>
				<p></p>
			<div class = "watchingListTitle3">
				<p>즐겨보니까</p>
			</div>
		</div>
		
		<div id = "watchingListBigBox">	<!-- 리스트박스 안에 큰박스  -->
		
			<div id = "watchingListBox"> <!--큰박스안에 박스   -->
				<div id= "watchingListTopBox">
					<div id="watchingListTopTitle">
						<p>24화 영이 내려온다</p>
					</div>
				</div>
				<div id="watchingListBottomBox" >
					<div id="watchingListBottomBox1">
						<img src= "/JAVACOMICS/image/webtoonList/01.Mon/06/main.png">
					</div>
					
					<div id ="Transparency"></div> <!--투명도  -->
					
					<div id="watchingListBottomBox2">
						<img src= "/JAVACOMICS/image/webtoonList/01.Mon/06/title.png">
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	
	
	<div id = "similarList">	<!-- 컨테이너 안에서 유사리스트  -->
	
		<div id= "similarListTitle" > <!--유사 리스트안에 큰제목  -->
			<div class = "similarListTitle1">
				<p>가비왕</p>
			</div>
			
			<div class = "similarListTitle2">
				<p>그림체와 유사한</p>
			</div>
			
			<div class = "similarListTitle3">
				<p>작품 어떠세요?</p>
			</div>
		</div>
		
		<div id= "similarListBigBox"> <!--유사 리스트 안에 큰박스  -->
		
			<div id = "similarListBox"> <!--유사 리스트 박스  -->
				<div class="similarListBox1">
					<img src="/JAVACOMICS/image/webtoonList/02.Tue/02/bg.jpg"/>				
				</div>
				<div class="similarListBox2">
					<img src="/JAVACOMICS/image/webtoonList/02.Tue/02/main.png"/>
				</div>
				<div class="similarListBox3">
					<img src="/JAVACOMICS/image/webtoonList/02.Tue/02/title.png"/>
				</div>
				<div id= "Transparency"></div>
			</div>
						
		</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	
	var randomT = "";
	
	$.ajax({
		url: "/JAVACOMICS/webtoon/getStorageBodyList",
		type: "post",
		data: 'id='+'angel',
		success: function(data){
			console.log(JSON.stringify(data));
			

			$.each(data.list, function(index, items){
				if(data.random == index){
					$("#randomTitle").text(items.title)
					randomT = items.title;
				}
				
				$("<div>", {
					id: 'watchingListBox'
				}).append($("<div>", {
					id: "watchingListTopBox"
					
				}).append($("<div>", {
					id: "watchingListTopTitle"
					
				}).append($("<p>", {
					text: items.episode
					
				})))).append($("<div>", {
					id: "watchingListBottomBox"
					
				}).append($("<div>", {
					id: "watchingListBottomBox1"
					
				}).append($("<img>", {
					src: "/JAVACOMICS/image/"+items.toonChar
					
				}))).append($("<div>", {
					id: "Transparency"
					
				}))).append($("<div>", {
					id: "watchingListBottomBox2"
					
				}).append($("<img>", {
					src: "/JAVACOMICS/image/" + items.toonTitle
					
				}))).appendTo($("#watchingListBigBox"));
				
			});
			
			
		},
		error: function(err){
			console.log(err)		
		}
	})
	
});


</script>