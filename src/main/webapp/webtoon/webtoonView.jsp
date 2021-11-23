<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JAVA COMICS</title>
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonView.css">
</head>
<body>

<div id="webtoonView_header">
	<p><img src="../image/webtoonComment_image/backicon.PNG"/></p>
	<p>1화</p>
	<!-- <p>
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
 			<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
		</svg>
	</p> -->
	<p></p>
</div>
		
<div id="webtoonView">
	<div id="webtoonView_toon">
		<img src="/JAVACOMICS/image/webtoonView_image/webtoon1.jpg" />
	</div>
	
	<div id="webtoonView_controllBar">
		<div id="webtoonView_controllBar_content">
			<img src="../image/webtoonView_image/backtoonicon.png">
			<img src="../image/webtoonView_image/commenticon.png">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
	 			<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
			</svg>
			<img src="../image/webtoonView_image/aftertoonicon.png">
		</div>
	</div>
	<a href="#">
		<div id="webtoonView_up"> 
			<img src="/JAVACOMICS/image/webtoonView_image/upicon.png" />
			<input type="button" value="맨 위로" id="webtoonView_upbtn"/>
		</div>
	</a>
	
	
	<div id="webtoonView_bottom">
		
		<div id="webtoonView_good">
			<div>8,431</div>
			<img src="/JAVACOMICS/image/webtoonView_image/goodicon.PNG" />
		</div>
		
		
		<div id="webtoonView_bestComment">
			<hr class="webtoonView_hr">
			<span>BEST</span>
			<hr class="webtoonView_hr">
			<span class="webtoonComment">댓글 더보기</span>
		</div>

		<br>
		<br>
		
		<div id="webtoonView_similartoon">
			<div id="webtoonView_similartoonTitle">이 작품과 유사한 작품들</div>
			
			<div class="webtoonView_similartoonbox">
				<div class="webtoonView_similartoonbox1">
					<img src="../image/webtoonView_image/similartoon1_background.jpg"/>					
				</div>
				<div class="webtoonView_similartoonbox2">
					<img src="../image/webtoonView_image/similartoon1.png"/>
				</div>
				<div class="webtoonView_similartoonbox3">
					<img src="../image/webtoonView_image/similartoon1_name.png"/>
				</div>
			</div>
			<div class="webtoonView_similartoonbox">
				<div class="webtoonView_similartoonbox1">
					<img src="../image/webtoonList/01.Mon/06/bg.jpg"/>					
				</div>
				<div class="webtoonView_similartoonbox2">
					<img src="../image/webtoonList/01.Mon/06/main.png"/>
				</div>
				<div class="webtoonView_similartoonbox3">
					<img src="../image/webtoonList/01.Mon/06/title.png"/>
				</div>
			</div>
			<div class="webtoonView_similartoonbox">
				<div class="webtoonView_similartoonbox1">
					<img src="../image/webtoonList/01.Mon/12/bg.jpg"/>					
				</div>
				<div class="webtoonView_similartoonbox2">
					<img src="../image/webtoonList/01.Mon/12/main.png"/>
				</div>
				<div class="webtoonView_similartoonbox3">
					<img src="../image/webtoonList/01.Mon/12/title.png"/>
				</div>
			</div>
			<div class="webtoonView_similartoonbox">
				<div class="webtoonView_similartoonbox1">
					<img src="../image/webtoonList/01.Mon/15/bg.jpg"/>					
				</div>
				<div class="webtoonView_similartoonbox2">
					<img src="../image/webtoonList/01.Mon/15/main.png"/>
				</div>
				<div class="webtoonView_similartoonbox3">
					<img src="../image/webtoonList/01.Mon/15/title.png"/>
				</div>
			</div>
			
			
		
	</div>		
</div>
	</div><!-- bottom  -->
</body>
</html>