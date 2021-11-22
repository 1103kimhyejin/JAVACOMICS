<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.backBtn {
	position: absolute;
	left: 50px;
	top: 50px;
	cursor: pointer;
}
.supportService {
	width: 700px;
	margin : 0 auto;
	text-align: center;
}
.supportService h1 {
	margin: 50px 0;
}
#supportListTable {
	margin : 0 auto;
}
#supportListTable tr {
	border-top : 1px solid gray;
	border-bottom:  1px solid gray;
}
#supportListTable tr th {
	width: 100px;
	height: 50px;
	font-size: 1.6rem;
}
#supportListTable tr th:nth-child(2){
	width: 300px;
}
#supportListTable tr td {
	font-size: 1.6rem;
	height: 30px;
}
#supportListTable tr td:nth-child(2) {
	cursor: pointer;
}
#supportListTable tr td:nth-child(2):hover {
	color: gray;
}
#supportWriteBtn {
	width: 60px;
	height: 30px;
	float: left;
	margin: 10px;
}
.searchDiv {
	width: 100%;
	background-color: green;
}
</style>

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