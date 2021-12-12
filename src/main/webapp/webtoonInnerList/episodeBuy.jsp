<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/static/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="/static/css/webtoon_cash.css?0722">
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css"> 
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonInnerListCss/episodeBuy.css">
</head>
<body>
<input type="hidden" id="toonMemId" value="${sessionScope.toonMemId }">
<input type="hidden" id="episode" value="${param.episode }">
<input type="hidden" id="title" value="${param.title }">
<input type="hidden" id="episodeCode" value="${param.episodeCode }">
<header>
<div class="episodeBuyHeader">
	<div>
		<a onclick="window.close()"><span class="img_wtc ico_close"></span></a>
		<span class="episodeBuy">이용권 구매</span>
		<a href="#"><span class="cashImg" style="color: #c6a66d;"><img src="/JAVACOMICS/image/webtoonInnerList/cash.svg"/>충전</span></a>
	</div>
	<div>
		<span class="episodeUse">해당 작품에만 사용 가능합니다.</span>
	</div>
</div>	
</header>

<section>
	<div class="buyContent">
		<div class="webtoon_ep">
			<span>title</span>
			<span>episode</span>
		</div>
		
		<div class="myCash">
			<span>보유 캐시</span>
			<span>myCash</span>
		</div>
		
		<div class="buy">
			<p>웹툰</p>
			<p>구매</p>
		</div>
		
		<div class="cash">
			<span>1장</span>
			<span class="useCash"><img src="/JAVACOMICS/image/webtoonInnerList/use_cash.svg"/>200</span>
		</div>
		
		<div class="wrap_btn">
        	<a class="btnPayNext" id="btnPayNext" style="cursor: pointer;">구매하기</a>
    		<span id="cashCheck"></span>
    	</div>
	</div>
</section>

<footer>
	<div class="info">
		<h3>규정안내</h3>
		<ul>
			<li>이 콘텐츠는 청약 철회가 불가한 상품으로 사용 완료된 이용권에 대한 구매 취소(청약 철회)는 불가합니다. 단, 법정 대리인의 동의가 없는 미성년자의 결제는 취소될 수 있습니다.</li>
			<li>발행자의 사정에 따라 업데이트가 지연될 수 있으며, 업데이트 지연을 이유로 구매 취소는 불가합니다.</li>
			<li>발행자의 의사에 따라 판매 가격이 변경될 수 있으며, 콘텐츠의 가격 변경을 이유로 한 구매 취소는 불가합니다.</li>
			<li>패키지 상품은 보너스 지급분을 제외한 유료 이용권만 취소 가능합니다.</li>
			<li>보유 대여권에는 선물 이용권이 포함됩니다.</li>
			<li>보유 캐시에는 이벤트 캐시가 포함됩니다.</li>
		</ul>
	</div>
</footer>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){	
	
	var id = document.getElementById("toonMemId").value;
	var title = document.getElementById("title").value;
	var episode = document.getElementById("episode").value;
	var episodeCode = document.getElementById("episodeCode").value;

	$('.webtoon_ep span:first-child').text(title);
	$('.webtoon_ep span:last-child').text(episode);	
	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/getCash',
		data: 'id=' + $('#toonMemId').val(),
		dataType: "json",
		success: function(data){
			alert(JSON.stringify(data));
			$('.myCash span:last-child').text(data+'캐시');
			
			$('.wrap_btn').click(function(){
				$('.btnPayNext').css({"background-color":"white", "color":"black", "border":"1px solid white"})
				if(data==0){
					$('#cashCheck').text('캐시충전이 필요합니다.'); 
				}else{	
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/webtoonInnerList/useCash',
						data: 'id=' + $('#toonMemId').val() +'&episodeCode=' + $('#episodeCode').val()
					});	
					window.close();
				}
			});
			
			$('.cashImg').click(function(){
				window.open("/JAVACOMICS/webtoonInnerList/webtoonPay?id="+id, "JAVACOMICS Pay", "width=400 height=600 top=200 left=700 scrollbars=yes");
				window.close();
				return false;
			});						
		},
		error: function(err){
			console.log(err);
		}
	});
});
</script>
</body>
</html>