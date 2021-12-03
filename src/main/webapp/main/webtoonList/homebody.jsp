<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/homeList.css">

<div class="webtoonList">
	<div id = monWeb>
		<div class = "day">
			<p id ="mon">월요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	</div>
	
	<div id = tueWeb>
		<div class = "day">
			<p id ="tue">화요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			
			<div id= "Transparency"></div>
		</div>	
	</div>
	
	<div id = wedWeb>
		<div class = "day">
			<p id ="wed">수요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	</div>
	
	<div id = thuWeb>
		<div class = "day">
			<p id ="thu">목요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	</div>
	
	<div id = friWeb>
		<div class = "day">
			<p id ="fri">금요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	</div>
	
	<div id = satWeb>
		<div class = "day">
			<p id ="sat">토요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	</div>
	
	<div id = sunWeb>
		<div class = "day">
			<p id ="sun">일요일</p>	
		</div>
		<div id="longBox">
			<div id="longBox1">
				<img src="image/webtoonList/01.Mon/01/bg.jpg"/>
			</div>
			<div id = longBox2>
				<video autoplay loop muted playsinline>
						<source src="image/webtoonList/01.Mon/01/main.webm"
	            				type="video/webm">
				</video>
			</div>
			<div id = longBox3>
				<img src="image/webtoonList/01.Mon/01/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	</div>
</div>


<!-- 
webtoonList/01.Mon/02/bg.jpg
		<a href="location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp'"><div class="box" >
			<div class="box1">
				<img src="image/webtoonList/01.Mon/05/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/05/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/05/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div></a>
-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$.ajax({
		url: "/JAVACOMICS/webtoon/getHomeBodyList",
		type: "post",
		dataType: "json",
		success: function(data){
			alert(JSON.stringify(data));
			
			$.each(data, function(index, items){
				if(items.toonDay == "월"){							
					$("<div/>", {
						class: "box",
						id: items.title
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#monWeb"));	
				}
				
				if(items.toonDay == "화"){					
					$("<div/>", {
						class: "box",
						id: items.title
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#tueWeb"));	
				}
				
				if(items.toonDay == "수"){					
					$("<div/>", {
						class: "box",
						id: items.title
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#wedWeb"));	
				}
				
				if(items.toonDay == "목"){					
					$("<div/>", {
						class: "box",
						id: items.title
						
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#thuWeb"));	
				}
				
				if(items.toonDay == "금"){					
					$("<div/>", {
						class: "box",
						id: items.title
						
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#friWeb"));	
				}
				
				if(items.toonDay == "토"){					
					$("<div/>", {
						class: "box",
						id: items.title
						
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#satWeb"));	
				}
				
				if(items.toonDay == "일"){					
					$("<div/>", {
						class: "box",
						id: items.title
						
					}).append($("<div/>", {
						class: "box1"
						
					}).append($("<img/>", {
						src: "image/" + items.toonBg
						
					}))).append($("<div/>", {
						class: "box2"
						
					}).append($("<img/>", {
						src: "image/" + items.toonChar
						
					}))).append($("<div/>", {
						class: "box3"
						
					}).append($("<img/>", {
						src: "image/" + items.toonTitle
						
					}))).append($("<div/>", {
						id: "Transparency"
						
					})).appendTo($("#sunWeb"));	
				}
			}); //each
			
			//각 div에 있는 웹툰 한 박스 클릭했을때 페이지 이동
			$('#monWeb > .box').click(function(){
			 	var title= $(this).attr("id");
			 	alert(title); 
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			});
			
			$('#tueWeb > .box').click(function(){	
			 	var title= $(this).attr("id");
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			});
			
			
			$('#wedWeb > .box').click(function(){
			 	var title= $(this).attr("id");
			 	alert(title); 
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			});
			
			$('#thuWeb > .box').click(function(){
			 	var title= $(this).attr("id");
			 	alert(title); 
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			});
			
			$('#friWeb > .box').click(function(){
			 	var title= $(this).attr("id");
			 	alert(title); 
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			});
			
			$('#satWeb > .box').click(function(){
			 	var title= $(this).attr("id");
			 	alert(title); 
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			});
			
			$('#sunWeb > .box').click(function(){
			 	var title= $(this).attr("id");
			 	alert(title); 
			 	location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title='+title;
			 	/* alert($(this).attr("id")); */
			  	/* $.ajax({
					type: 'get',
					url: '/JAVACOMICS/webtoonInnerList/webtoonInnerList',
					async : false,
					data: 'title='+$(this).attr("id")
				});   */
			});
		},
		error: function(err){
			alert("123");	
		}
		
	});	
});	
</script>