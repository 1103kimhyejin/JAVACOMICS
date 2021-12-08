<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JAVACOMICS PAY</title>
<link rel="shortcut icon" href="/static/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="/static/css/webtoon_cash.css?0722">
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css"> 
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonInnerListCss/webtoonPay.css">
</head>
<body>
<header>
	<div class="payHeader">
		<span class="img_wtc ico_change"></span>
		<span class="autoCharge">자동 충전</span>
		<span class="charge">캐시 충전</span>
		<a onclick="window.close()"><span class="img_wtc ico_close"></span></a>
	</div>
	<div class="cashPass">
		<p class="txt_ballon">CASH PASS VIP 최대 10% 캐시백</p>
	</div>
	
</header>

<section>
	<div class="payContent">
	
		<div class="myCash">
			<span>보유 캐시</span>
			<span>myCash</span>
		</div>
		
		<div class="useCash">
			<span>사용하기</span>
			<span>200 캐시</span>
		</div>
		
		<div class="cashCharge">
			<p>캐시</p>
			<p>충전</p>
		</div>
		
		<div class="cash_prm cash_prm_type1" style="background-image: none;">
	        <video playsinline="" autoplay="" muted="" loop="" src="https://contents.kr.kakaowebtoon.com/billing/banner/1627638365_1.mp4" poster="https://contents.kr.kakaowebtoon.com/billing/banner/1627638365_2.png">
	        </video>
     
	        <div class="box_cash">
	            <div class="cont_cash">
	                
                    <div class="tit_cont">
                        <span class="num_type2">CASH PASS VIP</span>
                    </div>
                    
                    <div class="txt_cont">
                        <span class="desc_type1">신청하면 최대 10% 캐시백</span>
                    </div>
	                    
	            </div>
	        </div> <!-- box_cash -->
    	</div> <!-- cash_prm cash_prm_type1 -->	
	</div> <!-- payContent -->
	
	<div class="cashList">
		<div class="item_inp">
			<input type="radio" name="item_id" class="inp_g" id="item_10" data-item_text="1000" value="1000" checked="checked">
			<label class="box_cash lab_g" for="item_10">
				<span class="img_wtc ico_chk"></span>
				<span class="num_type3">1,000캐시</span> 
				<span class="num_type4">₩ 1,000</span>
			</label>
		</div>
		
		<div class="item_inp">
			<input type="radio" name="item_id" class="inp_g" id="item_11" value="3000" data-item_text="3000">
			<label class="box_cash lab_g" for="item_11">
				<span class="img_wtc ico_chk"></span>
				<span class="num_type3">3,000캐시</span> 
				<span class="num_type4">₩ 3,000</span>
			</label>
		</div>
		
		<div class="item_inp">
			<input type="radio" name="item_id" class="inp_g" id="item_12" value="5000" data-item_text="5000">
			<label class="box_cash lab_g" for="item_12">
				<span class="img_wtc ico_chk"></span>
				<span class="num_type3">5,000캐시</span> 
				<span class="num_type4">₩ 5,000</span>
			</label>
		</div>
		
		<div class="item_inp">
			<input type="radio" name="item_id" class="inp_g" id="item_13" value="10000" data-item_text="10000">
			<label class="box_cash lab_g" for="item_13">
				<span class="img_wtc ico_chk"></span>
				<span class="num_type3">10,000캐시</span>
				<span class="recommend">추천</span> 
				<span class="num_type4">₩ 10,000</span>
			</label>
		</div>
		
		<div class="item_inp">
			<input type="radio" name="item_id" class="inp_g" id="item_14" data-item_text="30000" value="30000">
			<label class="box_cash lab_g" for="item_14">
				<span class="img_wtc ico_chk"></span>
				<span class="num_type3">30,000캐시</span> 
				<span class="num_type4">₩ 30,000</span>
			</label>
		</div>
	</div>
	

	<div class="payAgree">
		<span class="agree">아래 이용 안내 및 결제 진행에 동의합니다.</span>
    </div>

	<div class="wrap_btn">
        <a class="btnPayNext" id="btnPayNext" style="cursor: pointer;">다음</a>
    </div>
	
</section>

<footer>
	<div class="info">
		<h3>이용안내</h3>
		<ul>
			<li>충전된 캐시의 유효기간은 충전 후 5년입니다.</li>
			<li>1캐시는 1원입니다.</li>
			<li>사용되지 않은 캐시에 대해서는 7일 이내 청약철회가 가능합니다.</li>
			<li>미사용된 이용권에 대해서는 환불이 가능하며, 환불 시 환불수수료(10% 또는 1,000원 중 큰 금액)를 제외한 나머지 금액이 환불됩니다.</li>
			<li>광고성 이벤트 등 회사가 무료로 지급한 캐시는 환불되지 않습니다.</li>
			<li>자세한 내용은 카카오웹툰 유료서비스 이용약관에서 확인할 수 있습니다.</li>
		</ul>
	</div>
</footer>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/JAVACOMICS/js/webtoonInnerList.js"></script>

</body>
</html>