<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JAVA COMICS</title>
<link rel="stylesheet" href="../css/reset.css"> 
<link rel="stylesheet" href="../css/webtoonInnerListCss/webtoonInnerList.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/webtoonInnerList.js"></script>
  
</head>
<body>
<header>
	<div class="back">
		<li><img src="../image/webtoonInnerList/back.png"/></li>
	</div>
	<div class="heart">
		<li>
		<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
		  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
		</svg>
		</li>
	</div> 

	<div class="fillheart">
		<li>	
		<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
			<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
		</svg>
		</li>
	</div> 
	
	<div class="top">
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
			<%-- <jsp:include page="episode.jsp" /> --%>
			<jsp:include page="webtoonExplain.jsp" />
		</c:if>
		<%-- <c:if test="${not empty display }"> 
			<jsp:include page="${display }" />
		</c:if> --%>
	</div>
	
	<button type="button" onclick="location.href='#'" class="scroll">
		<img src="../image/webtoonInnerList/scrollicon.png" alt="스크롤">
	</button>
	
</section>
</body>
</html>