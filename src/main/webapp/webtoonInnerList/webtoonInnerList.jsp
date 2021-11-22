<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KAKAO WEBTOON</title>
<link rel="stylesheet" href="../css/reset.css"> 
<link rel="stylesheet" href="../css/webtoonInnerListCss/webtoonInnerList.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/webtoonInnerList.js"></script>
  
</head>
<body>
<header>
	<div class="top">
		<ul>
			<li><img src="../image/webtoonInnerList/back.png"/></li>
		</ul>	
		<ul>
			<li class="episode">회차</li>
			<li class="information">작품 정보</li>
		</ul>
	</div>
</header>

<section>
	<div id="container">
		<c:if test="${empty display }"> 
			<jsp:include page="webtoonImage.jsp" /> 
		</c:if>
		<%-- <c:if test="${not empty display }"> 
			<jsp:include page="${display }" />
		</c:if> --%>
	</div>
	
	<div id="content">
		<c:if test="${empty display }"> 
			<%-- <jsp:include page="episode.jsp" />  --%>
			<jsp:include page="webtoonExplain.jsp" /> 
		</c:if>
		<%-- <c:if test="${not empty display }"> 
			<jsp:include page="${display }" />
		</c:if> --%>
	</div>
</section>
</body>
</html>