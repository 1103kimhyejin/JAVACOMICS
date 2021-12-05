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
	<a onclick="location.href='/JAVACOMICS/webtoon/webtoonView.jsp'"><p><img src="../image/webtoonComment_image/backicon.PNG"/></p></a>
	<p>댓글</p>
	<p><img id="sortBtn" src="../image/webtoonComment_image/sorticon.png" onClick="sortBtn()"></p>
</div>

<form id="webtoonComment_inputForm">
   <div id="webtoonComment_input">
      <input name="webtoonComment_inputText" id="webtoonComment_inputText" placeholder="댓글을 입력해 주세요" type="text">
      <input type="submit" id="webtoonComment_inputBtn" value="입력" /> 
   </div>
</form>

<ul id="webtoonComment_list">
</ul>

<input id="sessionid" type="hidden" value="${sessionScope.toonMemId }"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
//댓글목록출력
$(function(){
		$.ajax({
			url: '/JAVACOMICS/tooncomment/getToonCommentList',
			type: 'post',
			data:'episodecode=1',
			dataType: 'json',
			success: function(data){
				

			 	$.each(data, function(index, items){
							addComment(items.id, items.content, items.logtime
								, items.totalgood, items.totalbad, items.reply
								, items.commentSeq);
							
				}) 
						
			},
			error: function(err){
				console.log(err);	
			}
		});
		
});


    

//$("#").attr("name","새로운네임")
//댓글목록 좋아요순정렬


function sortLatest(){
	$.ajax({
		url: '/JAVACOMICS/tooncomment/SortLatest',
		type: 'post',
		data:'episodecode=1',
		dataType: 'json',
		success: function(data){
			
			 	$.each(data, function(index, items){
						addComment(items.id, items.content, items.logtime
							, items.totalgood, items.totalbad, items.reply
							, items.commentSeq);
						
			}) 
				
		},
		error: function(err){
			console.log(err);	
		}
	});
	
}

//저장
$(function(){
	$('#webtoonComment_inputForm').submit(function(){
	      
	      if($('#sessionid').val()==''){
	    	  alert('로그인 하세요');
	    	  return false;
	      }
	      if(!$('#webtoonComment_inputText').val()){
	         alert('내용을 입력하세요.');
	         $('#webtoonComment_inputText').focus();
	         return false;
	      }else{
	  		$.ajax({
				type: 'post',
				url: '/JAVACOMICS/tooncomment/toonCommentWrite',
				data:'content='+ $('#webtoonComment_inputText').val(),
				success: function(){
					alert('댓글쓰기완료');
					$('#webtoonComment_list').empty();
					sortLatest();
				},
				error: function(err){
					console.log(err);
				}
			});
		}
	    	  
		return false;
	});
}); 


function addComment(id, content, logtime, totalgood, totalbad, reply, commentSeq){
	var webtoonComment_li = $('<li>');
	webtoonComment_li.attr('data-num', commentSeq);
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
	webtoonComment_Id_p.html(id);
	
	var webtoonComment_Date_p = $('<p>');
	webtoonComment_Date_p.html(logtime);
	webtoonComment_Date_p.addClass('webtoonComment_Date_p');
	
	var webtoonComment_Content_div = $('<div>');
	webtoonComment_Content_div.addClass('webtoonComment_Content_div');
	webtoonComment_Content_div.html(content);

	
	/* 좋아요, 싫어요, 답글 버튼 div  */
	var webtoonComment_GBRbtn_div = $('<div>');
	webtoonComment_GBRbtn_div.addClass('webtoonComment_GBRbtn_div');
	
	var webtoonComment_Good_btn = $('<input>');
	webtoonComment_Good_btn.attr({
		'type' : 'button',
		'value' : '좋아요 '+totalgood,
	});
	webtoonComment_Good_btn.addClass('webtoonComment_Good_btn');
	
	var webtoonComment_Bad_btn = $('<input>');
	webtoonComment_Bad_btn.attr({
		'type' : 'button',
		'value' : '싫어요 '+totalbad
	});
	webtoonComment_Bad_btn.addClass('webtoonComment_Bad_btn');
	
	var webtoonComment_Reply_btn = $('<input>');
	webtoonComment_Reply_btn.attr({
		'type' : 'button',
		'value' : '답글 '+reply
	});

	/* 삭제하기 일단 냅둠 */
	var del_input = $('<input>');
	del_input.attr({
		'type' : 'button',
		'value' : '삭제하기'
	});
	del_input.addClass('delete_btn');
	
	/* append */
	if(totalgood>10){
		webtoonComment_Best_Id_Date_div.append(webtoonComment_Best_p).append(webtoonComment_Id_p).append(webtoonComment_Date_p);
		webtoonComment_BIDC_div.append(webtoonComment_Best_Id_Date_div).append(webtoonComment_Content_div);
		webtoonComment_GBRbtn_div.append(webtoonComment_Good_btn).append(webtoonComment_Bad_btn).append(webtoonComment_Reply_btn);
		webtoonComment_li.append(webtoonComment_BIDC_div).append(webtoonComment_GBRbtn_div);
		$('#webtoonComment_list').append(webtoonComment_li);
	}else{
		//webtoonComment_Best_Id_Date_div.append(webtoonComment_Best_p).append(webtoonComment_Id_p).append(webtoonComment_Date_p);
		webtoonComment_Best_Id_Date_div.append(webtoonComment_Id_p).append(webtoonComment_Date_p);
		webtoonComment_BIDC_div.append(webtoonComment_Best_Id_Date_div).append(webtoonComment_Content_div);
		webtoonComment_GBRbtn_div.append(webtoonComment_Good_btn).append(webtoonComment_Bad_btn).append(webtoonComment_Reply_btn);
		webtoonComment_li.append(webtoonComment_BIDC_div).append(webtoonComment_GBRbtn_div);
		$('#webtoonComment_list').append(webtoonComment_li);
	}

}

//좋아요
$(document).on('click', '.webtoonComment_Good_btn', function(){
	//$(this).parents(li).attr('id','good'); 
	if($('#sessionid').val()==''){
  	  alert('로그인 하세요');
  	  return false;
    }else{
	var commentSeq= $(this).parents('li').attr('data-num');
		$.ajax({
			type: 'post',
			url: '/JAVACOMICS/commentGoodBad/checkGoodId',
			data:'commentSeq='+commentSeq,
			success: function(data){
				if(data == 'exist'){
					alert('좋아요취소');
					
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/commentGoodBad/commentGoodDelete',
						data:'commentSeq='+commentSeq,
						success: function(){
							location.href='/JAVACOMICS/webtoon/webtoonComment.jsp'
						},
						error: function(err){
							alert('좋아요취소에러');
						}
					});	

				}else if(data == 'non_exist'){
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/commentGoodBad/commentGood',
						data:'commentSeq='+commentSeq,
						success: function(){
							
							location.href='/JAVACOMICS/webtoon/webtoonComment.jsp'
							//good.load('/JAVACOMICS/commentGoodBad/commentGood good');
							
						},
						error: function(err){
							alert('인서트에러');
						}
					});		
				
						
							
				}
			},			 
			error: function(err){
				alert('에러');
			}
		});
	
	}
});

//싫어요
$(document).on('click', '.webtoonComment_Bad_btn', function(){
	//$(this).css('color', 'red');
	//$('input[name="checked"]').css('color', 'red');
	if($('#sessionid').val()==''){
  	  alert('로그인 하세요');
  	  return false;
    }else{
	var commentSeq= $(this).parents('li').attr('data-num');
		$.ajax({
			type: 'post',
			url: '/JAVACOMICS/commentGoodBad/checkBadId',
			data:'commentSeq='+commentSeq,
			success: function(data){
				if(data == 'exist'){
					alert('싫어요취소');
					
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/commentGoodBad/commentBadDelete',
						data:'commentSeq='+commentSeq,
						success: function(){
							location.href='/JAVACOMICS/webtoon/webtoonComment.jsp'
						},
						error: function(err){
							alert('싫어요취소에러');
						}
					});	

				}else if(data == 'non_exist'){
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/commentGoodBad/commentBad',
						data:'commentSeq='+commentSeq,
						success: function(){
							location.href='/JAVACOMICS/webtoon/webtoonComment.jsp'
							//$(this).css('color', 'red');
							// $('#checked').load(location.href + ' #checked');	
						},
						error: function(err){
							alert('인서트에러');
						}
					});			
				}
			},			 
			error: function(err){
				alert('에러');
			}
		});
	}
});

</script>
</body>
</html>