<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">

	.webtoonList {
		width : 640px;
		 margin: 0 auto;
		background-color: black;
	}
	.box{
		display: inline-block;
		position: relative;
		margin: 0.1%;
		width: 24.4%;
		height: 330px;
		overflow: hidden;
	}
	.box1 > img {
		position: absolute;
		top: -50px;
		left: 0px;
	}
	.box2 > img {
		position: absolute;
		width: 100%;
		height: 100%;
		left:0;
	}
	.box3 > img {
		width:100%;
		position:absolute;
		bottom: 20px;
		left:0;
		z-index: 1;
	}
	
	.box:after {
		content: '';
		display: block;
		clear: both;
	}

	#longBox{
		display: inline-block;
		position: relative;
		width: 24.6%;
		height: 663px;
		overflow: hidden;
		float: left;
		background-color: blue;
		content: "";
		clear : both;
		
	}
	#longBox1 > img{
		position: absolute;
		top: -150px;
		left: -100px;
		
	}
	#longBox2 > video{
		position: absolute;
		width:100%;
		height:100%;
		left:0;
	}
	#longBox3 > img{
		
		width:100%;
		position:absolute;
		bottom: 30px;
		left:0;
		z-index: 1;
	}
	
	#longBox:after {
		content: '';
		display: block;
		clear: both;
	}
	.day{
		width:100%;
		height:50px;
		display: flex;
		padding-left:18px;
		padding-right:18px;
	}
	#mon{
		width:86px;
		height:36px;
		color:#333;
		font-size:28px;
		font-weight:900;
		align-self: flex-end;
		word-break: break-word;
		display:block;
	}
  	#Transparency{
		position: absolute;
		width:100%;
		height:calc((100% / 3)*2);
		left:0;
		bottom: 0;
		background-image: linear-gradient(180deg,transparent,rgba(0,0,0,.6)); /*투명도  */
	}
	
</style>
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
	
		<div class="box">
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
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/06/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/06/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/06/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/07/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/07/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/07/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/08/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/08/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/08/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/09/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/09/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/09/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/10/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/10/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/10/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/11/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/11/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/11/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/12/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/12/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/12/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/13/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/13/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/13/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/14/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/14/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/14/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/15/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/15/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/15/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/16/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/16/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/16/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/17/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/17/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/17/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
		
		<div class="box">
			<div class="box1">
				<img src="image/webtoonList/01.Mon/18/bg.jpg"/>				
			</div>
			<div class="box2">
				<img src="image/webtoonList/01.Mon/18/main.png"/>
			</div>
			<div class="box3">
				<img src="image/webtoonList/01.Mon/18/title.png"/>
			</div>
			<div id= "Transparency"></div>
		</div>
	
		
	</div>
</div>