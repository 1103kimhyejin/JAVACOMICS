<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">

body {
	background-color : black;
	padding-top : 5%;
	padding-left : 30%;
	padding-right : 30%;
}

.div1 {
	padding : 0 0 30px 0;
}

.div1_1 {
	float : left;
}

.div1_2 {
	float : right;
	display : inline-block;
	color : white;
	padding-right : 3%;
}

.span1 {
	font-weight : lighter;
	font-size : 0.8em;
	color : gray;
}

.span2 {
	font-size : 0.8em;
}

.h11 {
	margin : 0;
	color : #C6A66D;
	left : 100px;
}

.h12 {
	margin : 0;
	color : #333;
}

.videobanner {
	cursor : pointer;
}

.div2 {
	position : relative;
}

.div3 {
    position : absolute;
    top : 280px;
    left : 550px;
    transform : translate(-50%, -50%);
    cursor : pointer;
}

.strong1 {
	font-size : 16px;
	line-height : 19px;
	color : #fff;
}

.span3 {
	font-size : 13px;
	line-height : 16px;
	color : #a6a6a6;
}

.divtest {
	overflow : hidden;
}

.div4 {
	float : left;
}

.div5 {
	line-height : 50px;
}

.div6 {
	float : right;
	padding-left : 20%;
}

label {
	color : white;
	font-weight : bold;
}

.recommend {
	display : inline-block;
	height : 16px;
	padding : 2px 6px 6px 6px;
	background-color : #FF3042;
	color : #fff;
	font-size : 12px;
	line-height : 1.3;
	border-radius : 8px;
	box-sizing : border-box;
	white-space : nowrap;
}

.cashspan {
	color : #C6A66D;
	font-weight : bold;
	line-height : 50px;
}

.button1 {
	width : 500px;
	height : 40px;
	border : none;
	text-align : center;
	text-decoration : none;
	display : inline-block;
	font-size : 15px;
	margin : 4px;
	cursor : pointer;
	border-radius : 20px;
}

.agreelabel {
	color : #5f5f5f;
	font-weight : normal;
}

.div8 {
	padding-top : 3%;
}

.div9 {
	color : #5f5f5f;
	font-size : 0.8em;
}

ul {
	line-height : 25px;
}

input[type="radio"] {
	-webkit-appearance : none;
	width : 16px;
	height : 16px;
    border-radius : 50%;
    outline : none;
    background : #5f5f5f;
}

input[type='radio']:before {
    content : '';
    display : block;
    width : 50%;
    height : 50%;
    margin : 20% auto;  
    border-radius : 50%;
}
    
input[type='radio']:checked:before {
  	background : #B18904;
}

input[id='agree']:checked:before {
  	background : white;
}

.h333 {
	color : white;
}

</style>

<body>
	<div class="div1">
		<div class="div1_1">
      		<span class="span1">보유 캐시</span>
    	</div>
    	<div class="div1_2">
      		<span class="span2">1,000캐시</span>
    	</div>
    </div>
    
    <h1 class="h11">캐시</h1>
    <h1 class="h12">충전</h1>
    
    <div class="div2">
    	<video class="videobanner" src="../image/VIPbanner.mp4" onclick="location.href='VIP p'" height=150 width=100% loop autoplay="" muted="" ></video>
    </div>
    
    <div class="div3" onclick="location.href='VIP p'">
		<strong class="strong1">CASH PASS VIP</strong><br>
		<span class="span3">신청하면 최대 10% 캐시백</span>
	</div>
	
  <div class="divtest">
   <div class="div4">	
    <div class="div5">
    <input type="radio" id="1000cash" name="drone" value="1000캐시"
         checked>
    <label for="1000cash">1,000캐시</label>
    </div>
    
    <div class="div5">
    <input type="radio" id="3000cash" name="drone" value="3000캐시">
    <label for="3000cash">3,000캐시</label>
    </div>
    
    <div class="div5">
    <input type="radio" id="5000cash" name="drone" value="5000캐시">
    <label for="5000cash">5,000캐시</label>
	</div>
	
	<div class="div5">
    <input type="radio" id="10000cash" name="drone" value="10000캐시">
    <label for="10000cash">10,000캐시</label><span class="recommend">추천</span>
	</div>
	
	<div class="div5">
    <input type="radio" id="30000cash" name="drone" value="30000캐시">
    <label for="30000cash">30,000캐시</label>
	</div>
	
	<div class="div5">
    <input type="radio" id="50000cash" name="drone" value="50000캐시">
    <label for="50000cash">50,000캐시</label>
	</div>
	
	<div class="div5">
    <input type="radio" id="100000cash" name="drone" value="100000캐시">
    <label for="100000cash">100,000캐시</label>
    </div>
   </div>
   
   <div class="div6">
   	<div class="div7">
   		<span class="cashspan">₩ 1,000</span>
   	</div>
   	
   	<div class="div7">
   		<span class="cashspan">₩ 3,000</span>
   	</div>
   	
   	<div class="div7">
   		<span class="cashspan">₩ 5,000</span>
   	</div>
   	
   	<div class="div7">
   		<span class="cashspan">₩ 10,000</span>
   	</div>
   	
   	<div class="div7">
   		<span class="cashspan">₩ 30,000</span>
   	</div>
   	
   	<div class="div7">
   		<span class="cashspan">₩ 50,000</span>
   	</div>
   	
   	<div class="div7">
   		<span class="cashspan">₩ 100,000</span>
   	</div>
   </div> 
  </div>
  <hr>
  
  	<div class="div8">
    <input type="radio" id="agree" name="agreename">
    <label class="agreelabel" for="agree">아래 이용 안내 및 결제 진행에 동의합니다.</label>
	</div><br>
	
	<input type="button" class="button1" value="다음"/>
	
  <div class="div9">
	<h3 class="h333">이용 안내</h3>
		<ul class="ulll">
			<li>충전된 캐시의 유효기간은 충전 후 5년입니다.</li>
			<li>1캐시는 1원입니다.&nbsp;</li>
			<li>사용되지 않은 캐시에 대해서는 7일 이내 청약철회가 가능합니다.</li>
			<li>미사용된 이용권에 대해서는 환불이 가능하며, 환불 시 환불수수료(10% 또는 1,000원 중 큰 금액)를 제외한 나머지 금액이 환불됩니다.</li>
			<li>광고성 이벤트 등 회사가 무료로 지급한 캐시는 환불되지 않습니다.</li>
			<li>자세한 내용은 카카오웹툰 유료서비스 이용약관에서 확인할 수 있습니다.</li>
		</ul>
  </div>
</body>
