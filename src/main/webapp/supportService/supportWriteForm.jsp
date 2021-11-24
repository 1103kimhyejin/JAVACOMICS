<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/supportCss/supportWriteForm.css">
  
<div class="supportWriteFormDiv">
	<div class="backBtn"><img src="image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<form id="supportWriteForm" enctype="multipart/form-data" method="post" 
									action="">       
		<table>
			
			
			<tr>
				<td><input type="text" name="supportSubject" id="supportSubject" placeholder="제목을 적어주세요"></td>
			</tr>
			
			
			
			<tr>
				<td><textarea cols="50" rows="15" name="supportContent" id="supportContent"></textarea></td>
			</tr>
			
			<tr>
				<td>
					<input type="file" name="supportImg[]" multiple>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" id="supportWriteBtn" value="글저장"/>
					<input type="reset" value="다시작성"/>
				</td>
	        </tr>
		</table>
	</form>
</div>