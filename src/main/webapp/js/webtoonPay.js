$(function(){	
	$.ajax({
		type: 'post',
		url: '/JAVACOMICS/webtoonInnerList/getCash',
		data: 'id=' + $('#toonMemId').val(),
		dataType: "json",
		success: function(data){
			$('.myCash span:last-child').text(data+'캐시');	
					
		},
		error: function(err){
			console.log(err);
		}
	});
});