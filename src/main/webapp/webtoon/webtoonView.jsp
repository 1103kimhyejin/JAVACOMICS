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
<link rel='icon' type='image/png' href='/JAVACOMICS/image/logo.png'>
</head>
<body>
<input type="hidden" id="episodeCode" value="${param.episodeCode}">
<input type="hidden" id="title" value="${param.title}">
<input id="sessionid" type="hidden" value="${sessionScope.toonMemId }"/>
<header>
	<a onclick="location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=${param.title}'"><p><img src="/JAVACOMICS/image/webtoonComment_image/backicon.PNG"/></p></a>
	<p></p>
	<p></p>
	<div><a href="/JAVACOMICS/webtoon/mainpage"><img src="/JAVACOMICS/image/homeBtn2.png"/></a></div>
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
			<div></div><!--좋아요 수-->
			<div id="goodicon">
				<svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
					  <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
				</svg>
			</div>
			<div id="fillgoodicon">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
				  <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
				</svg>
			</div>
			<div></div>
			
<!-- 			<img src="/JAVACOMICS/image/webtoonView_image/goodicon.PNG" /> -->
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
			<!--
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
			</div> -->
		
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
           $('#webtoonimg').attr('src','/JAVACOMICS/image/webtoonView_image/'+data.episodeContent);
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
//좋아요 총 개수 가져오기
	$.ajax({
		url: '/JAVACOMICS/episodeGoodView/goodCount',
		type: 'post',
		data:'episodeCode='+$('#episodeCode').val(),
		success: function(data){
			$('#good div:first-child').html(data);
		},
		error: function(err){
			console.log(err);	
		}
	});
$('#fillgoodicon').hide();
if($('#sessionid').val()!=''){
	//이미 에피소드에 좋아요했을경우 fill여부
		$.ajax({
			url: '/JAVACOMICS/episodeGoodView/episodeGoodCheckId',
			type: 'post',
			data:'title='+$('#title').val()+'&episodeCode='+$('#episodeCode').val(),
			success: function(data){
				//alert(data);
	
				if(data=='exist'){
					$('#goodicon').hide();
					$('#fillgoodicon').show();
					
				} 
			},
			error: function( request, status, error ){
				alert("status : " + request.status + ", message : " + request.responseText + ", error : " + error);
			}
		});
}
//조회수
/* $.ajax({
	url: '/JAVACOMICS/episodeGoodView/episodeView',
	type: 'post',
	data:'title='+$('#title').val()+'&episodeCode='+$('#episodeCode').val(),
	success: function(data){
		alert('조회수 올리기 성공');

	},
	error: function( request, status, error ){
		alert("status : " + request.status + ", message : " + request.responseText + ", error : " + error);
	}
}); */
//유사작품
	$.ajax({
	url: "/JAVACOMICS/webtoon/getStorageBodybottom",
	type: "post",
	data: 'title='+$('#title').val(),
	success: function(data){
		$.each(data, function(index, items){
			if(items.title != $('#webtoon_title').val() && index < 4){
				$("<div/>", {
					class: 'similartoonbox',
					onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList.jsp?title=" + items.title +"'"
				}).append($("<div/>", {
					class: 'similartoonbox1'
				}).append($("<img/>", {
					src: "/JAVACOMICS/image/" + items.toonBg	
				}))).append($("<div/>", {
					class: "similartoonbox2"
				}).append($("<img/>", {
					src: "/JAVACOMICS/image/" + items.toonChar
				}))).append($("<div>", {
					class: "similartoonbox3"		
				}).append($("<img>", {
					src: "/JAVACOMICS/image/" + items.toonTitle		
				}))).append($("<div/>", {
					class: "Transparency",
					id: "Transparency"
				})).appendTo($("#similartoon"));
			}
		}); 
	},
	error: function(err){
		console.log(err)		
	}
	
});

});//onload


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
//웹툰 좋아요 기능
$('#goodicon').click(function(){
	
	  if($('#sessionid').val()==''){
    	  alert('로그인 하세요');
    	  
    	  return false;
      }else{


		$.ajax({
			url: '/JAVACOMICS/episodeGoodView/episodeGoodCheckId',
			type: 'post',
			data:'title='+$('#title').val()+'&episodeCode='+$('#episodeCode').val(),
			success: function(data){
				//alert(data);
 
				if(data=='non_exist'){
					$('#goodicon').hide();
					$('#fillgoodicon').show();
					$.ajax({
						url: '/JAVACOMICS/episodeGoodView/episodeGood',
						type: 'post',
						data:'title='+$('#title').val()+'&episodeCode='+$('#episodeCode').val(),
						success: function(){
							//좋아요 총 개수 가져오기
							$.ajax({
								url: '/JAVACOMICS/episodeGoodView/goodCount',
								type: 'post',
								data:'episodeCode='+$('#episodeCode').val(),
								success: function(data){
									$('#good div:first-child').html(data);
								},
								error: function(err){
									console.log(err);	
								}
							});
						},
						error: function( request, status, error ){
							alert("status : " + request.status + ", message : " + request.responseText + ", error : " + error);
						}
					});
				} 
			},
			error: function( request, status, error ){
				alert("status : " + request.status + ", message : " + request.responseText + ", error : " + error);
			}
		});
		
      }
});
//웹툰 좋아요 취소
$('#fillgoodicon').click(function(){

	  if($('#sessionid').val()==''){
    	  alert('로그인 하세요');
    	  
    	  return false;
      }else{

		$(this).hide();
		$('#goodicon').show();
		
			$.ajax({
				url: '/JAVACOMICS/episodeGoodView/episodeGoodDelete',
				type: 'post',
				data:'episodeCode='+$('#episodeCode').val(),
				success: function(){
					//좋아요 총 개수 가져오기
					$.ajax({
						url: '/JAVACOMICS/episodeGoodView/goodCount',
						type: 'post',
						data:'episodeCode='+$('#episodeCode').val(),
						success: function(data){
							$('#good div:first-child').html(data);
						},
						error: function(err){
							console.log(err);	
						}
					});
				},
				error: function( request, status, error ){
					alert("status : " + request.status + ", message : " + request.responseText + ", error : " + error);
				}
			});
      }
});
//조회수 증가
if($('#sessionid').val()!=''){
	$.ajax({
			type: 'post',
			url: '/JAVACOMICS/episodeGoodView/viewIdCheck',
			data: 'episodeCode='+$('#episodeCode').val(),
			success: function(data){
				if(data=='non_exist'){
					$.ajax({
							type: 'post',
							url: '/JAVACOMICS/episodeGoodView/viewUpdate',
							data:'title='+$('#title').val()+'&episodeCode='+$('#episodeCode').val(),
							success: function(){
								//alert('조회수 증가');
							},
							error: function(err){
								alert('조회수 증가 에러');
							}
					});
				}
			},
			error: function(err){
				alert('조회아이디체크 에러');
			}
	});
}else{
		$.ajax({
				type: 'post',
				url: '/JAVACOMICS/episodeGoodView/viewUpdateNotMem',
				data:'title='+$('#title').val()+'&episodeCode='+$('#episodeCode').val(),
				success: function(){
					//alert('비회원 조회수 증가');
				},
				error: function(err){
				}
				});
		

	
	
}
//조회수를 위한 쿠키 생성 여기에도
$.ajax({
		type: 'post',
		url: '/JAVACOMICS/episodeGoodView/cookie',
		success: function(){
			//alert('쿠키생성');
		},
		error: function(err){
			alert('쿠키생성에러');
		}
});
</script>
</body>
</html>