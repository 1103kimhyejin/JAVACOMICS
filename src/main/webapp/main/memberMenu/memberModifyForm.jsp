<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link rel="stylesheet" href="/JAVACOMICS/css/memberModifyForm.css">
<div class="memberModifyFormDiv">
<h1>회원정보 수정</h1>
<div class="backBtn2"><img src="/JAVACOMICS/image/back.png"/></div>
<form name="memberModifyForm" id="memberModifyForm" method="post">
	<input type="hidden" id="id" name="id" value="${sessionScope.toonMemId }"> <!-- 주희추가 -->
	<table>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" id="name" placeholder="이름 입력">
				<div id= "nameDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd"  placeholder="새 비밀번호 입력">
				<div id= "pwdDiv"></div>
			</td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td>
				<input type="password" name="pwd2" id="pwd2"  placeholder="새 비밀번호 확인">
				<div id= "pwd2Div"></div>
			</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				남 <input type="radio" name="gender" id="male" value="남">
				여 <input type="radio" name="gender" id="female" value="여">
				<div id= "genderDiv"></div>
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
				<input type="text" name="email" id="email" placeholder="이메일 입력">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<div class="msgDiv"></div>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="memberModifyBtn" value="정보수정">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/toonmember/memberInfo',
		data: 'id='+$('#id').val(),
		dataType: 'json',
		success: function(data){
			
			if(data.gender == '남' || data.gender == 'male'){
				
				$('#male').prop('checked', true);
			} else {
				$('#female').prop('checked', true);
			}
			
			$('#name').val(data.name),
			$('#email').val(data.email)
		},
		error: function(err){
			console.log(err);
		}
	});
});
</script>
