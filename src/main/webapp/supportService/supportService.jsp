<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/supportCss/supportService.css">

<div class="supportService">
	<div class="backBtn"><img src="image/backicon.PNG"></div>
	<h1>고객문의</h1>
	<input type="hidden" id="pg" value="${requestScope.pg }">
	<table id="supportListTable">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>이러이러한 문제가 발생하여 문의합니다 해결해 주세요</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		<tr>
			<td>1</td>
			<td>문의합니다</td>
			<td>고길동</td>
			<td>1</td>
			<td>2021.11.22</td>
		</tr>
		
	</table>
	<input type="button" id="supportWriteBtn" value="글쓰기">
	<div style="width: 750px; text-align: center;" id="supportPagingDiv"></div>
	<div class="searchDiv">
		<input type="text" id="searchBox" placeholder="">
		<input type="button" id="searchBtn" value="검색">
	</div>
	
</div>