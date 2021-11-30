<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KAKAO WEBTOON</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/index.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<body>
<header>
	<jsp:include page="main/menu.jsp"/>
</header>

<div id="fullscreen" class="hide">
	<div class="history"></div>
	<c:if test="${empty fullscreenDisplay }">
		<%-- <jsp:include page="main/myMenu.jsp" /> --%>
		<jsp:include page="main/myMenu/myMenuNoId.jsp" />
	</c:if>
	<c:if test="${not empty fullscreenDisplay }">
		<jsp:include page="${fullscreenDisplay }" />
	</c:if>
</div>
<div class="history"></div>

<section>
	<div id="container">
		<c:if test="${empty display }">

			<jsp:include page="main/body.jsp" />
		</c:if>
		<c:if test="${not empty display }">
			<jsp:include page="${display }" />
		</c:if>
	</div>
</section>

<footer>
	<ul>
		<li>사업자 정보</li>
		<li>이용약관</li>
		<li>개인정보처리방침</li>
		<li>청소년 보호 정책</li>
		<li>고객센터</li>
		<li>사업자 정보</li>
	</ul>
	<span>&copy; KAKAO WEBTOON</span>
</footer>

</body>
</html>