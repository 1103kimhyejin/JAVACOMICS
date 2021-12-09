<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/map.css">
</head>
<body>

<div class="info">
	<div class="backBtn2"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<h1>사업자 정보</h1>
	
	<span>상호</span>
	<span>주식회사 자바 엔터테인먼트</span>
	<span>대표자</span>
	<span>최상기</span>
	<span>사업자 등록 번호</span>
	<span>123-12-12345</span>
	<span>통신판매업 신고 번호</span>
	<span>2018-성남분당B-0004</span>
	<span>대표전화</span>
	<span>1244-1255</span>
	<span>전자우편 주소</span>
	<span>contact@javaent.com</span>
	<span>호스팅 서비스 사업자</span>
	<span>주식회사 자바 엔터테인먼트</span>
	<span>주소</span>
	<span>서울특별시 강남구 강남대로94길 20 삼오빌딩 5-9층</span>
	
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1465.3730748367595!2d127.02804994574055!3d37.498936462842714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca194d4bb162f%3A0x9612cf895f23eaca!2z67mE7Yq47Lqg7ZSEIOqwleuCqOuzuOybkA!5e0!3m2!1sko!2skr!4v1639031593285!5m2!1sko!2skr" style="border:0;" allowfullscreen="" loading="lazy"></iframe> 
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$('.backBtn2').click(function(){
	$(location).attr("href", "/JAVACOMICS/menu/backmenu");
});
</script>

</body>
</html>