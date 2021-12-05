$(function(){
	$(".ranking li").click(function(){
		$("#category").val($(this).text())
		
		$.ajax({
		url: "/JAVACOMICS/webtoon/getRankBodyList",
		type: "post",
		data: 'category='+$('#category').val(),
		dataType: "json",
		success: function(data){
			alert(JSON.stringify(data));
			$('#rankBody111').empty();
			
			$.each(data, function(index, items){
				$("<div/>", {
					class: "rankBox",
					onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
					
				}).append($("<div/>", {
					class: "rankNum"
					
				}).append($("<span/>",{
					text: index+2
					
				}))).append($("<div/>", {
					class: "rankBox1"
					
				}).append($("<img/>", {
					src:"/JAVACOMICS/image/" + items.toonBg
					
				}))).append($("<div>", {
					class: "rankBox2"
					
				}).append($("<img/>", {
					src: "/JAVACOMICS/image/" + items.toonChar
					
				}))).append($("<div>", {
					class: "rankBox3"
					
				}).append($("<img/>", {
					src: "/JAVACOMICS/image/" + items.toonTitle
					
				}))).append($("<div/>", {
					id: "Transparency"
					
				})).appendTo($("#rankBody111"));
			})
		},
		error: function(err){
			console.log(err);
		}
	})
		
	})
});