<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">

body {
	background-color : black;
}

header {
	color : white;
	text-align : center;
}

.div1122 {
	padding-left : 43%;
}

.div1 {	
	width : 100px;
	height : 30px;
	color : black;
	line-height : 30px;
	text-align : center;
	background : white;
	border : solid 2px white;
	border-radius : 15px;
	float : left;
	cursor : pointer;
}

.div2 {	
	width : 100px;
	height : 30px;
	color : black;
	line-height : 30px;
	text-align : center;
	background : white;
	border : solid 2px white;
	border-radius : 15px;
	float : left;
	margin-left : 10px;
	cursor : pointer;
}

.img1 {
	height : 50px;
	float : left;
}
.div3 {
	float : left;
}

.div3344 {
	padding-left : 25%;
}

.span1 {
	color : white;
	font-size : 2em;
}

.btn1 {
	background-color : transparent;
	heigth : 70px;
	width : 50px;
    border : 1px solid;
    border-radius : 25px;
    color : #c6a66d;
    cursor : pointer;
}

.div4 {
	float : right;
	padding-right : 30%;
}

.span2, .span4 {
	color : #c6a66d;
}

.span3, .span5 {
	color : white;
}

.span6, .span7 {
	color : #5f5f5f;
}

.div5566 {
	float : left;
	padding-left : 25%;
	line-height : 30px;
	pointer-events : none;
}

.div7788 {
	display : inline-block;
	float : right;
	padding-right : 30%;
	line-height : 30px;
}

.videobanner {
	width : 50%;
	height : 30%;
	padding-left : 22%;
	cursor : pointer;
}

.div8 {
	pointer-events : none;
}

.div10 {
	position : absolute;
    top : 340px;
    left : 450px;
    transform : translate(-50%, -50%);
    cursor : pointer;
}

.span6 {
	text-decoration : underline;
	cursor : pointer;
	
}

.strong1 {
	font-size : 16px;
	line-height : 19px;
	color : #fff;
}

.span8 {
	font-size : 13px;
	line-height : 16px;
	color : #a6a6a6;
}

.span9 {
	color : #c6a66d;
}

.span10 {
	color : white;
}

.span11 {
	font-weight : lighter;
	color : gray;
}

.span12 {
	font-weight : lighter;
	color : gray;
}

.div11 {
	float : left;
	padding-left : 24%;
	pointer-events : none;
}

.div12 {
	float : right;
	padding-right : 30%;
	padding-top : 3%;
	pointer-events : none;
}

</style>

<body>
	<header><h2>캐시 내역</h2></header>
		<div class="div1122">
		<div class="div1" onclick="location.href='충전내역p'">충전 내역</div>
		<div class="div2" onclick="location.href='사용내역p'">사용 내역</div><!-- 마우스 오버,클릭 필요 -->
		<br>
		<br>
		</div>
		
   <div class="div3344">	
	<img class="img1" src="../image/cash2.svg">
		<div class="div3">
			<span class="span1" onclick="location.href='캐시내역p'"> 1,000</span>
		</div>
   </div>
		
		<div class="div4">
			<button class="btn1" onclick="location.href='충전내역p'">충전</button>
		</div>
		<br>
		<br>
		<br>
		
	   <div class="div5566">	
		<div class="div5"><span class="span2">구매 캐시</span><span class="span3">&nbsp;&nbsp;0</span></div>
		<div class="div6"><span class="span4">이벤트 캐시</span><span class="span5">&nbsp;&nbsp;1,000</span></div>
	   </div>
		
	   <div class="div7788">	
		<div class="div7"><span class="span6" onclick="location.href='발급 정보p'">현금 영수증 발급 정보</span></div>
		<div class="div8"><span class="span7">1,000캐시 21.11.23 만료 예정</span></div>
	   </div>
	   
		<div class="div9">
    		<video class="videobanner" src="../image/VIPbanner.mp4"  onclick="location.href='VIP페이지이동'" height=150 width=100% loop autoplay="" muted="" ></video>
   	    </div>
    
    	<div class="div10" onclick="location.href='VIP페이지이동'">
			<strong class="strong1">CASH PASS VIP</strong><br>
			<span class="span8">신청하면 최대 10% 캐시백</span>
		</div>
		
		<div class="div11">
			<span class="span9">1,000캐시</span><br>
			<span class="span10">11월 가입 축하 캐시</span><br>
			<span class="span11">21.11.09 18:49:26</span>
		</div>
		
		<div class="div12">
			<span class="span12">유효기간 21.11.23</span>
		</div>
		
		
		
</body>
