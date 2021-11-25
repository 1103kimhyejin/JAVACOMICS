<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>JAVA COMICS</title>
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonComment.css">
</head>
<body>

<div id="webtoonComment_header">
	<p><img src="../image/webtoonComment_image/backicon.PNG"/></p>
	<p>댓글</p>
	<p><img src="../image/webtoonComment_image/scrollicon.png"/></p>
</div>

<form id="webtoonComment_inputForm">
   <div id="webtoonComment_input">
      <input name="webtoonComment_input" id="webtoonComment_inputText" placeholder="댓글을 입력해 주세요" type="text">
      <input type="submit" id="webtoonComment_inputBtn" value="입력" /> 
   </div>
</form>

<ul id="webtoonComment_list">
</ul>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
 $(function(){
	//저장
	$('#webtoonComment_inputForm').submit(function(){
	      
	      if(!$('#webtoonComment_inputText').val()){
	         alert('내용을 입력하세요.');
	         $('#webtoonComment_inputText').focus();
	         return false;
	      }
 	     
	    addItem('1', '작성자', $('#webtoonComment_inputText').val(), '21.11.11');
	    	
		return false;
	});
}); 

function addItem(num, writer, content, datetime){
	var webtoonComment_li = $('<li>');
	//webtoonComment_li.attr('data-num', num);
	webtoonComment_li.addClass('webtoonComment_li');
	
	
	/* 베스트, 아이디, 날짜, 내용 div  */
	var webtoonComment_BIDC_div = $('<div>');
	webtoonComment_BIDC_div.addClass('webtoonComment_BIDC_div');
	
	var webtoonComment_Best_Id_Date_div = $('<div>');
	webtoonComment_Best_Id_Date_div.addClass('webtoonComment_Best_Id_Date_div');
	
	var webtoonComment_Best_p =$('<p>');
	webtoonComment_Best_p.addClass('webtoonComment_Best_p');
	webtoonComment_Best_p.html('BEST');

	var webtoonComment_Id_p=$('<p>');
	webtoonComment_Id_p.addClass('webtoonComment_Id_p');
	webtoonComment_Id_p.html(writer);
	
	var webtoonComment_Date_p = $('<p>');
	webtoonComment_Date_p.html(datetime);
	webtoonComment_Date_p.addClass('webtoonComment_Date_p');
	
	var webtoonComment_Content_div = $('<div>');
	webtoonComment_Content_div.addClass('webtoonComment_Content_div');
	webtoonComment_Content_div.html(content);

	
	/* 좋아요, 싫어요, 답글 버튼 div  */
	var webtoonComment_GBRbtn_div = $('<div>');
	webtoonComment_GBRbtn_div.addClass('webtoonComment_GBRbtn_div');
	webtoonComment_GBRbtn_div.attr('data-num', num);
	
	var webtoonComment_Good_btn = $('<input>');
	webtoonComment_Good_btn.attr({
		'type' : 'button',
		'value' : '좋아요'
	});
	
	var webtoonComment_Bad_btn = $('<input>');
	webtoonComment_Bad_btn.attr({
		'type' : 'button',
		'value' : '싫어요'
	});
	
	var webtoonComment_Reply_btn = $('<input>');
	webtoonComment_Reply_btn.attr({
		'type' : 'button',
		'value' : '답글'
	});
	
	/* 삭제하기 일단 냅둠 */
	var del_input = $('<input>');
	del_input.attr({
		'type' : 'button',
		'value' : '삭제하기'
	});
	del_input.addClass('delete_btn');
	
	/* append */
	webtoonComment_Best_Id_Date_div.append(webtoonComment_Best_p).append(webtoonComment_Id_p).append(webtoonComment_Date_p);
	webtoonComment_BIDC_div.append(webtoonComment_Best_Id_Date_div).append(webtoonComment_Content_div);
	webtoonComment_GBRbtn_div.append(webtoonComment_Good_btn).append(webtoonComment_Bad_btn).append(webtoonComment_Reply_btn);
	webtoonComment_li.append(webtoonComment_BIDC_div).append(webtoonComment_GBRbtn_div);
	$('#webtoonComment_list').append(webtoonComment_li);

}
</script>
</body>
</html>