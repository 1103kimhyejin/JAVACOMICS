$(function(){	
	
	var id = document.getElementById("toonMemId").value;
	var title = document.getElementById("title").value;
	var episode = document.getElementById("episode").value;
	var episodeCode = document.getElementById("episodeCode").value;

	$('.webtoon_ep span:first-child').text(title);
	$('.webtoon_ep span:last-child').text(episode);	
	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/getCash',
		data: 'id=' + $('#toonMemId').val(),
		dataType: "json",
		success: function(data){
			
			$('.myCash span:last-child').text(data+'캐시');
			
			$('.wrap_btn').click(function(){
				$('.btnPayNext').css({"background-color":"white", "color":"black", "border":"1px solid white"})
				if(data==0){
					$('#cashCheck').text('캐시충전이 필요합니다.'); 
				}else{	
					$.ajax({
						type: 'post',
						url: '/JAVACOMICS/webtoonInnerList/useCash',
						data: 'id=' + $('#toonMemId').val() +'&episodeCode=' + $('#episodeCode').val()
					});	
					window.close();
				}
			});
			
			$('.cashImg').click(function(){
				window.open("/JAVACOMICS/webtoonInnerList/webtoonPay?id="+id, "JAVACOMICS Pay", "width=400 height=600 top=200 left=700 scrollbars=yes");
				window.close();
				return false;
			});						
		},
		error: function(err){
			console.log(err);
		}
	});
});