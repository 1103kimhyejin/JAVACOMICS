<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link rel="stylesheet" href="/JAVACOMICS/css/myMenu.css">   

<div class="myMenu">

	<div class="backBtn"><img src="/JAVACOMICS/image/backicon.PNG"></div>
	<div class="contentsdiv">
			<div class="spandiv2">
				<img src="/JAVACOMICS/image/loginBtn.png" alt="loginBtn"/>
				<a id="loginBtn">Login</a>
				<div><a href="/JAVACOMICS/customerboard/customerboardList">고객센터</a></div>
				<div><a href="/JAVACOMICS/main/myMenu/map.jsp">사업자정보</a></div>
			</div>
	</div>	
			<div id="mask"></div>
			<div id="loginForm" class="loginDiv hid">
					<form name="memberLoginForm" id="memberLoginForm" method="post">
						<table>
							<tr>
								<td>아이디</td>
								<td>
									<input type="text" name="id" id="loginId" placeholder="아이디 입력">
									<div id= "idDiv"></div>
								</td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td>
									<input type="password" name="pwd" id="loginPwd" placeholder="비밀번호 입력">
									<div id= "pwdDiv"></div>
								</td>
							</tr>
							
							<tr>
								<td colspan="2" align="center">
									<div id="loginDiv"></div>
								</td>
							</tr>
							
							<tr id="loginBtntd">
								<td colspan="3" align="center">
									<input type="button" id="memberLoginBtn" value="로그인">
									<input type="button" id="memberWriteFormBtn" value="회원가입">
									<div id="kakaoLoginBtn"><img src="/JAVACOMICS/image/myMenu/kakaologin.png"></div>
								</td>
							</tr>
							
							<!-- <tr>
								<td colspan="2" align="center">
									<input type="button" id="closeLogin" value="닫기">
								</td>
							</tr> -->
						</table>
					</form>
			</div><!-- 로그인 폼  -->
	
</div>

