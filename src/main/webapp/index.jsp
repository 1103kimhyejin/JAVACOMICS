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
<input type="hidden" id="rankTop">
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
<script type="text/javascript" src="/JAVACOMICS/js/webtoonmenubar.js"></script>

<script type="text/javascript">
//SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('ee52611503f91455b5bfaa37ebfe82ae');

// SDK 초기화 여부를 판단합니다.
console.log(Kakao.isInitialized());

$('#kakaoLoginBtn').click(function(){

	window.Kakao.Auth.login({
	    scope: 'profile_nickname, account_email, gender, age_range', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
	    success: function(response) {
	        console.log(response) // 로그인 성공하면 받아오는 데이터
	        window.Kakao.API.request({ // 사용자 정보 가져오기 
	            url: '/v2/user/me',
	            success: (res) => {
	                const kakao_account = res.kakao_account;
	                const properties = res.properties;
	                console.log(kakao_account)
	                console.log(res)
	                
	                //---------------------------------
	                
	                $.ajax({
						type: 'post',
						url: '/JAVACOMICS/toonmember/checkId',
						data: 'id='+res.id,
						dataType: 'text',
						success: function(data){
							if(data == 'exist'){
								$.ajax({
									type : 'post',
									url: '/JAVACOMICS/toonmember/login',
									data: {
										'id': res.id,
										'pwd': res.id
									},
									dataType: 'text',
									success: function(data){
										if(data == 'success'){
											location.href = '/JAVACOMICS/index.jsp';
										}else{
											alert('로그인 실패');
										}
									},
									error: function(err){
										console.log(err);
									}
								});
								
							}else if(data == 'non_exist'){
								
								$.ajax({
									type: 'post',
									url: '/JAVACOMICS/toonmember/kakaoMemberWrite',
									data: {
										'name': properties.nickname,
										'id': res.id,
										'pwd': res.id,
										'gender': kakao_account.gender,
										'age': kakao_account.age_range,
										'email': kakao_account.email
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
	                
	                
	                /*
	                $.ajax({
						type : 'post',
						url: '/JAVACOMICS/toonmember/login',
						data: {
							'id': res.id,
							'pwd': res.id
						},
						dataType: 'text',
						success: function(data){
							if(data == 'success'){
								location.href = '/JAVACOMICS/index.jsp';
							}else{
								alert('로그인 실패');
							}
						},
						error: function(err){
							console.log(err);
						}
					});
	                */
	                //---------------------------------
	            }
	        });
	        //window.location.href='/JAVACOMICS/toonmember/kakaoLogin' //리다이렉트 되는 코드
	        
	    },
	    fail: function(error) {
	        console.log(error);
	    }
	    
	});

	
});

$('#kakaoLogoutBtn').click(function(){
	/*
	if (!Kakao.Auth.getAccessToken()) {
	 console.log('Not logged in.');
	 return;
	}
	Kakao.Auth.logout(function(response) {
		alert(response +' logout');
	 window.location.href='/JAVACOMICS/'
	});
	*/
	
	Kakao.API.request({
	   	url: '/v1/user/unlink',
	   	success: function(response) {
	   		console.log(response);
	   		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
	   		window.location.href='/JAVACOMICS/toonmember/logout'
	   	},
	   	fail: function(error) {
	   		console.log('탈퇴 미완료')
	   		console.log(error);
	   		window.location.href='/JAVACOMICS/toonmember/logout'
	   	},
	});
});


</script>

</body>
</html>