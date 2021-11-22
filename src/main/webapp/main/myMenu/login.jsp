<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">

body {
	background-color : black;
	text-align : center;
}

.div1 {
	display : inline-block;
	padding-right : 20px;
	padding-top : 70px;
}

.div2 {
	display : inline-block;
	padding-top : 70px;
	cursor : pointer;
}

.ul1 {
	color : white;
	list-style : none;
	line-height : 50px;
}

li {
	cursor : pointer;
}
</style>
<body>
	<div class="div1">
		<img class="img1" src="../image/loginPic.png">
	</div>
	
	<div class="div2">
		<img class="img2" src="../image/loginPic2.png" onclick="location.href='로그인 p'">
	</div>
	
	<div class="div3">
		<ul class="ul1">
			<li onclick="location.href='쿠폰등록 p'">쿠폰 등록</li>
			<li onclick="location.href='웹툰리그 p'">웹툰리그</li>
			<li onclick="location.href='설정 p'">설정</li>
			<li onclick="location.href='고객센터 p'">고객센터</li>
		</ul>
	</div>
</body>