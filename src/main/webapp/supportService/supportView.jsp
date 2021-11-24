<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="css/supportCss/supportView.css">

<div class="supportView">
	<div class="backBtn"><img src="image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<form id="supportViewForm" action="">
		<input type="hidden" id="seq" name="seq" value="${requestScope.seq }">
		<input type="hidden" id="pg" name="pg" value="${requestScope.pg }">
		<table>
			<tr>
				<td colspan="3"><h3><span id="subjectSpan">문의합니다</span></h3></td>
			</tr>
			
			<tr>
				<td >글번호 : <span id="seqSpan">2</span></td>
				<td >작성자 : <span id="idSpan">aa12a</span></td>
				<td >조회수 : <span id="hitSpan">37</span></td>
			</tr>
			
			
			
			
			<tr>
				<td colspan="3" height="200" valign="top">
					<pre>
						<span id="contentSpan">
							이러이러한 문제가 생겨서 안되가지고
							해결을 요구합니다.
							물어내라
						</span>
					</pre>
				</td>
			</tr>
		</table>
		
		<input type="button" id="boardListBtn" value="목록" 
		onclick="location.href='boardList.do?pg=${pg}'">
		<span id="supportViewSpan">
		
			<input type="button" value="글수정" onclick="">
			<input type="button" value="글삭제" onclick="">
			
		</span>
		<input type="button" value="답글"
		onclick="location.href='boardReplyForm.do?seq=${seq}&pg=${pg}'">
	</form>
</div>