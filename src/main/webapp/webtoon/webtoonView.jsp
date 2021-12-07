<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JAVA COMICS</title>
<link rel="stylesheet" href="/JAVACOMICS/css/reset.css">
<link rel="stylesheet" href="/JAVACOMICS/css/webtoonView.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
<input type="hidden" id="episodeCode" value="${param.episodeCode}">
<input type="hidden" id="title" value="${param.title}">
<header>
	<a onclick="location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=${param.title}'"><p><img src="../image/webtoonComment_image/backicon.PNG"/></p></a>
	<p></p>
	<p></p>
</header>
		
<section>
	<div id="controllBar">
		<div id="controllBar_content">
			<a id="beforetoon"><img src="../image/webtoonView_image/backtoonicon.png"></a>
			<a onclick="location.href='/JAVACOMICS/webtoon/webtoonComment.jsp?title=${param.title}&episodeCode=${param.episodeCode}'">
				<img src="../image/webtoonView_image/commenticon.png">
			</a>
			<a onclick="location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=${param.title}'">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
	 				<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
				</svg>
			</a>
			<a id="aftertoon"><img src="../image/webtoonView_image/aftertoonicon.png"></a>
		</div>
	</div>
	
	<img id="webtoonimg"/>
	
	
	<a href="#">
		<div id="up"> 
			<img src="/JAVACOMICS/image/webtoonView_image/upicon.png" />
			<input type="button" value="맨 위로" id="upbtn"/>
		</div>
	</a>
</section>

<footer>
		<div id="good">
			<div>8,431</div>
			<img src="/JAVACOMICS/image/webtoonView_image/goodicon.PNG" />
		</div>
		
		<ul id="comment">
					<!-- <div>
						<p class="best_p">BEST</p>
						<p class="id_p">작성자</p>
						<p class="date_p">21.11.20</p>
					</div>
					<div class="comment_content">안녕하세요</div>	 -->
		</ul>
		<br>
			<a onclick="location.href='/JAVACOMICS/webtoon/webtoonComment.jsp?title=${param.title}&episodeCode=${param.episodeCode}'">
				<span id="commentMore"></span>
			</a>
		
	
		<br>
		<br> 
			
		<div id="similartoon">
			<div id="similartoonTitle">이 작품과 유사한 작품들</div>
			
			<div class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonView_image/similartoon1_background.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonView_image/similartoon1.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonView_image/similartoon1_name.png"/>
				</div>
				
				<div id="Transparency"></div>
			</div>
			<div class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonList/01.Mon/06/bg.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonList/01.Mon/06/main.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonList/01.Mon/06/title.png"/>
				</div>
				<div id="Transparency"></div>
			</div>
			<div class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonList/01.Mon/12/bg.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonList/01.Mon/12/main.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonList/01.Mon/12/title.png"/>
				</div>
				<div id="Transparency"></div>
			</div>
		
			<div id="last_similartoonbox" class="similartoonbox">
				<div class="similartoonbox1">
					<img src="../image/webtoonList/01.Mon/15/bg.jpg"/>					
				</div>
				<div class="similartoonbox2">
					<img src="../image/webtoonList/01.Mon/15/main.png"/>
				</div>
				<div class="similartoonbox3">
					<img src="../image/webtoonList/01.Mon/15/title.png"/>
				</div>
				<div id="Transparency"></div>
			</div>
		
		</div><!-- similartoon	 -->	
	</footer>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
//만화가져오기
	$.ajax({
        type: 'post',
        url: '/JAVACOMICS/episodeList/getEpisode',
        data: 'episodeCode='+$('#episodeCode').val(),
        dataType: 'json',
        success: function(data){
          // alert(JSON.stringify(data));
           $('#webtoonimg').attr('src','/JAVACOMICS/image/'+data.episodeContent);
           $('header p:nth-child(2)').html(data.episode);
        },
        error: function(err){
           console.log(err);
        }
     });
//댓글 총 개수 가져오기
	$.ajax({
		url: '/JAVACOMICS/tooncomment/getToonCommentCount',
		type: 'post',
		data:'episodeCode='+$('#episodeCode').val(),
		dataType: 'json',
		success: function(data){
				$('#commentMore').html('댓글 '+data+'개 보기');
				if(data==0){
					$('#commentMore').html('이 에피소드의 첫 댓글 작성하러 가기');
				}
		},
		error: function(err){
			console.log(err);	
		}
	});

//베스트 댓글 가져오기
	$.ajax({
		url: '/JAVACOMICS/tooncomment/getToonCommentList',
		type: 'post',
		data:'episodeCode='+$('#episodeCode').val(),
		dataType: 'json',
		success: function(data){
		 	//var count=0;
		 	$.each(data, function(index, items){
		 		if(items.totalgood>10) 
		 			addComment(items.id, items.content, items.logtime);
		 			//count=1;
		 		});
		 	//if(count==0) $('#comment').css('display','none');
		 
		},
		error: function(err){
			console.log(err);	
		}
	});
});


function addComment(id, content, logtime){
	var comment_li = $('<li>');
	comment_li.attr('id','comment_li');
	
	var div = $('<div>');
	
	var best_p = $('<p>');
	best_p.addClass('best_p');
	best_p.html('BEST');

	var id_p = $('<p>');
	id_p.addClass('id_p');
	id_p.html(id);
	
	var date_p = $('<p>');
	date_p.html(logtime);
	date_p.addClass('date_p');
	
	var comment_content = $('<div>');
	comment_content.addClass('comment_content');
	comment_content.html(content);

	
	div.append(best_p).append(id_p).append(date_p);
	comment_li.append(div).append(comment_content);
	$('#comment').append(comment_li);

}
//컨트롤바
$(document).click(function(){
	$('#controllBar').toggle('slow');
});

//컨트롤바 < > 기능
$('#beforetoon').click(function(){
	$.ajax({
		url: '/JAVACOMICS/episodeList/lownumEpisodeCode',
		type: 'post',
		data:'title='+$('#title').val(),
		dataType: 'json',
		success: function(data){
			 //alert(JSON.stringify(data));
			var beforeEpisodeLownum;
			$.each(data, function(index, items){
				if(items.episodeCode==$('#episodeCode').val()){ 
					beforeEpisodeLownum = items.rownum-1;	
				}//if
			});//each
			$.each(data, function(index, items){
				if(beforeEpisodeLownum==items.rownum){
					if(items.free=='T'){
						location.href='/JAVACOMICS/webtoon/webtoonView.jsp?'+'episodeCode='+items.episodeCode+'&title='+$('#title').val();
					}
					if(items.free=='F') {
						swal("다음 회차는 유료입니다.", {
							  buttons: false,
							  timer: 1000
							});
					}
				}
			});
		},
		error: function(err){
			console.log(err);	
		}
	});
}); 
$('#aftertoon').click(function(){
	$.ajax({
		url: '/JAVACOMICS/episodeList/lownumEpisodeCode',
		type: 'post',
		data:'title='+$('#title').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			var afterEpisodeLownum;
			$.each(data, function(index, items){
				if(items.episodeCode==$('#episodeCode').val()){ 
					afterEpisodeLownum = items.rownum+1;	
				}//if
			});//each
			
			$.each(data, function(index, items){
					if(afterEpisodeLownum==items.rownum){
						if(items.free=='T'){
							location.href='/JAVACOMICS/webtoon/webtoonView.jsp?'+'episodeCode='+items.episodeCode+'&title='+$('#title').val();
						}
						if(items.free=='F') {
							swal("다음 회차는 유료입니다.", {
								  buttons: false,
								  timer: 1000
								});
						}
							
					}
				
			});//each
		},
		error: function(err){
			console.log(err);	
		}
	});
});


</script>
</body>
</html>