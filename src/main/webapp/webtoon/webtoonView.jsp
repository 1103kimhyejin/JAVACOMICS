<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JAVA COMICS</title>
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonView.css">
</head>
<body>

<header>
	<p><img src="../image/webtoonComment_image/backicon.PNG"/></p>
	<p>1화</p>
	<p></p>
</header>
		
<section>
	
	<img id="webtoonimg" src="/JAVACOMICS/image/webtoonView_image/webtoon1.jpg" />
	
	<div id="controllBar">
		<div id="controllBar_content">
			<img src="../image/webtoonView_image/backtoonicon.png">
			<img src="../image/webtoonView_image/commenticon.png">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
	 			<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
			</svg>
			<img src="../image/webtoonView_image/aftertoonicon.png">
		</div>
	</div>
	
	<a href="#">
		<div id="up"> 
			<img src="/JAVACOMICS/image/webtoonView_image/upicon.png" />
			<input type="button" value="맨 위로" id="upbtn"/>
		</div>
	</a>
</section>

<footer>
		<div id="good">
			<div>8,431</div>
			<img src="/JAVACOMICS/image/webtoonView_image/goodicon.PNG" />
		</div>
		
		<div id="comment">
			<div>
				<p class="best_p">BEST</p>
				<p class="id_p">작성자</p>
				<p class="date_p">21.11.20</p>
			</div>
			<div class="comment_content">안녕하세요</div>	
		</div>
		<br>
		<span id="commentMore">댓글 더보기</span>
		
	
		<br>
		<br> 
			
		<div id="similartoon">
			<div id="similartoonTitle">이 작품과 유사한 작품들</div>
			
			<div class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonView_image/similartoon1_background.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonView_image/similartoon1.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonView_image/similartoon1_name.png"/>
				</div>
			</div>
			<div class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonList/01.Mon/06/bg.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonList/01.Mon/06/main.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonList/01.Mon/06/title.png"/>
				</div>
			</div>
			<div class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonList/01.Mon/12/bg.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonList/01.Mon/12/main.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonList/01.Mon/12/title.png"/>
				</div>
			</div>
		
			<div id="last_similartoonbox" class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonList/01.Mon/15/bg.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonList/01.Mon/15/main.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonList/01.Mon/15/title.png"/>
				</div>
			</div>
		
		</div><!-- similartoon	 -->	
	</footer>


</body>
</html>