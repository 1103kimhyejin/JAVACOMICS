<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/memberWriteForm.css">
<div class="memberWriteFormDiv">
<h1>회원가입</h1>
<div class="backBtn"><img src="/JAVACOMICS/image/back.png"/></div>
<form name="memberWriteForm" id="memberWriteForm" method="post">
	
	<table>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" id="name" placeholder="이름 입력">
				<div id= "nameDiv"></div>
			</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="id" id="id" placeholder="아이디 입력">
				<input type="hidden" id="check" value="">
				<div id= "idDiv"></div>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd"  placeholder="비밀번호 입력">
				<div id= "pwdDiv"></div>
			</td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td>
				<input type="password" name="pwd2" id="pwd2"  placeholder="비밀번호 확인">
				<div id= "pwd2Div"></div>
			</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				남 <input type="radio" name="gender" value="남" checked="checked">
				여 <input type="radio" name="gender" value="여">
				<div id= "genderDiv"></div>
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
				<input type="text" name="email" id="email" placeholder="이메일 입력">
				<input type="button" id="emailConfirm" value="메일인증">
			</td>
		</tr>
		<tr>
			<td>인증번호</td>
			<td>
				<input type="text" name="confirm" id="confirm" >
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<div class="msgDiv"></div>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="memberWriteBtn" value="회원가입">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$('#emailConfirm').click(function(){
	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/email/send',
		data: 'email='+$('#email').val(),
		dataType: 'text',
		success: function(data){
			alert(data);
		},
		error: function(err){
			console.log(err);
		}
	});
	
});
</script>



