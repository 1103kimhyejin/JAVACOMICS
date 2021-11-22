<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	#rankWeb{
		width:640px;
		margin: 0 auto;
		background-color: black;
		
	}
	#rankBigBox{
		display: inline-block;
		position:relative;
		width: 100%;
		height: 440px;
		overflow: hidden;
	}
	#rankBigBox1 > img{
		position:absolute;
		width:100%;
		left:0;
		
	}
	#rankBigBox2 > video{
		position: absolute;
		width:80%;
		height:100%;
		left:80px;
		top:10px;
	}
	#rankBigBox3{
		width:35%;
		height: 200px;
		position:absolute;
		top:210px;
		text-align: left;
		padding-left:15px;
	}
	#rankBigBox3 > img{

	}
	#rankNew{
		display: inline-flex;
		height: 18px;
		border-radius: 9px;
		line-height: 20px;
		color: #fff;
		font-size:11px;
		font-weight: 700;
		background-color: #ff3042;
		padding-left: 6px;
		padding-right:6px;
		margin-bottom:15px;
	}
	#rankStory{
		font-size: larger;
		margin-top: 20px;
		line-height: 20px;
	}
	.rankBigNum{
		position:absolute;
		bottom:22px;
		height:100px;
		overflow:hidden;
		right: 10px;
		width:76px;
	}
	.rankOne{
		position:absolute;
		color:#fff;
		font-size:66px;
		font-weight:800;
		bottom:-7px;
		left:6px;
		z-index:1;
		font-family: KwNumber,sans-serif!important;
	}
	.rankM{
		position:absolute;
		align-items: center;
    	display: flex;
    	justify-content: center;
		bottom:2px;
		height: 16px;
		right: 8px;
		z-index: 1;
	}
	.rankBigNum:after{
		background-color: #ff3042;
		border-radius: 10.5px;
		bottom:0;
		content: "";
		height: 21px;
		position: absolute;
		right:0;
		width:100%;
	}
	.rankBox{
		display: inline-block;
		position:relative;
		width: 24.6%;
		height: 330px;
		overflow: hidden;
	}
	.rankBox1 > img{
		position: absolute;
		top: -50px;
		left: 0px;
	}
	.rankBox2 > img{
		position: absolute;
		width: 100%;
		height: 100%;
		left:0;
	}
	.rankBox3 > img{
		width: 180px;
		position: absolute;
		bottom: 20px;
		left:-15px;
	}
	.rankBox:after {
		content: '';
		display: block;
		clear: both;
	}
	.rankNum{
		position:absolute;
		border-radius: 10.5px;
		height:21px;
		left:6px;
		top:6px;
		width:68px;
		background-color: #1c1c1c;
		padding-top:1px;
		z-index:1;
	}
	.rankNum > span{
		position:absolute;
		left:8px;
		top:4px;
		color:#fff;
		font-size:14px;
		font-weight:800;
	}
</style>
 
<div id= "rankWeb">
	<div id= "rankBigBox">
		<div id = "rankBigBox1">
			<img src = "image/rankbody/rankbigbg.jpg">
		</div>
		<div id = "rankBigBox2">
			<video autoplay loop muted playsinline>
					<source src="image/rankbody/rankbigimg.webm"
            				type="video/webm">
			</video>
		</div>
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
		
		<div class = "rankBigNum">
			<span class= "rankOne">1</span>
			<div class= "rankM">ㅡ</div>
		</div>
	</div>
	
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
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>3</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/06/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/06/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/06/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>4</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/07/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/07/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/07/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>5</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/08/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/08/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/08/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>6</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/09/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/09/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/09/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>7</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/10/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/10/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/10/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>8</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/11/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/11/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/11/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>9</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/12/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/12/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/12/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>10</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/13/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/13/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/13/title.png">
		</div>
	</div>
	
		<div class= "rankBox">
		<div class = rankNum>
			<span>11</span>
		</div>
		<div class = "rankBox1">
			<img src="image/webtoonList/01.Mon/15/bg.jpg">
		</div>
		<div class = "rankBox2">
			<img src="image/webtoonList/01.Mon/15/main.png">
		</div>
		<div class = "rankBox3">
			<img src="image/webtoonList/01.Mon/15/title.png">
		</div>
	</div>
	

	

</div>