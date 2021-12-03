<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KAKAO WEBTOON</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/index.css">

</head>
<body>
<header>
	<jsp:include page="main/menu.jsp"/>
</header>
<input type="hidden" id="hideBox" value="${hide }">
<div id="fullscreen" class="hide">
	<div class="history"></div>
	<c:if test="${empty fullscreenDisplay }">
		<c:if test="${sessionScope.toonMemId != null }">
			<jsp:include page="main/myMenu/myMenu.jsp" />
		</c:if>
		<c:if test="${sessionScope.toonMemId == null }">
			<jsp:include page="main/myMenu/myMenuNoId.jsp" />
		</c:if> 
	</c:if>
	<c:if test="${not empty fullscreenDisplay }">
		<jsp:include page="${fullscreenDisplay }" />
	</c:if>
</div>
<div class="history"></div>

<section>
	<div id="container">
		<c:if test="${empty display }">

			<jsp:include page="main/webtoonList/rankbody.jsp" />

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
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/JAVACOMICS/js/index.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script type="text/javascript">
	//SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('ee52611503f91455b5bfaa37ebfe82ae');
	
	// SDK 초기화 여부를 판단합니다.
	console.log(Kakao.isInitialized());

	$('#kakaoLoginBtn').click(function(){
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  //--------------------
	        	  $.ajax({
						type: 'post',
						url: '/JAVACOMICS/toonmember/checkId',
						data: 'id='+response.id,
						dataType: 'text',
						success: function(data){
							if(data == 'exist'){
								
								
							}else if(data == 'non_exist'){
								$.ajax({
									type: 'post',
									url: '/JAVACOMICS/toonmember/toonMemberWrite',
									data: {
										
									},
									success: function(){
										alert('회원가입을 축하합니다');
										location.href = '/JAVACOMICS/index.jsp';
									},
									error: function(err){
										console.log(err);
									}
								});
							}
						},
						error: function(err){
							console.log(err);
						}
					});
	        	  
	        	  //------------------
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	});
	//카카오로그아웃  
	$('#logoutBt').click(function(){
		
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	});  
  
</script>

</body>
</html>