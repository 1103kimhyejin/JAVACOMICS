$(function(){
	//요일 메뉴바 클릭시 스크롤 이동
	$(".toonList li:nth-child(2)").click(function(){
		var monset = $('#rankTop').offset(); 
	    $('html').animate({scrollTop : monset.top}, 800); 
	})
	$(".toonList li:nth-child(3)").click(function(){
		var tueset = $('#tueWeb').offset(); 
	    $('html').animate({scrollTop : tueset.top}, 800); 
	})
	$(".toonList li:nth-child(4)").click(function(){
		var wedset = $('#wedWeb').offset(); 
	    $('html').animate({scrollTop : wedset.top}, 800); 
	})
	$(".toonList li:nth-child(5)").click(function(){
		var thuset = $('#thuWeb').offset(); 
	    $('html').animate({scrollTop : thuset.top}, 800); 
	})
	$(".toonList li:nth-child(6)").click(function(){
		var friset = $('#friWeb').offset(); 
	    $('html').animate({scrollTop : friset.top}, 800); 
	})
	$(".toonList li:nth-child(7)").click(function(){
		var satset = $('#satWeb').offset(); 
	    $('html').animate({scrollTop : satset.top}, 800); 
	})
	$(".toonList li:nth-child(8)").click(function(){
		var sunset = $('#sunWeb').offset(); 
	    $('html').animate({scrollTop : sunset.top}, 800); 
	})
	
	//장르 메뉴바 클릭시 장르별 좋아요순 정렬
	$(".ranking li").click(function(){
		$("#category").val($(this).text())
		
		var offset = $('#rankTop').offset(); 
	    $('html').animate({scrollTop : offset.top}, 800);
	
		$.ajax({
		url: "/JAVACOMICS/webtoon/getRankBodyList",
		type: "post",
		data: 'category='+$('#category').val(),
		dataType: "json",
		success: function(data){
			
			$('#rankType').empty();
			$('.rankBox').remove();
			$("#rankBigBox2 video").remove();
			
			$.each(data, function(index, items){
				
				if(index == 0){
					$("#rankBigBox1 > img").prop("src", "/JAVACOMICS/image/" + items.toonBg)
					$("#rankBigBox2").html("<video autoplay loop muted playsinline>")
					$("#rankBigBox2 video").html('<source src="/JAVACOMICS/image/'+ items.toonVideo + '" type="video/webm">')
					$("#rankBigBox3 > img").prop("src", "/JAVACOMICS/image/" + items.type1stTitle)
					$("#rankStory").text(items.story1)
				}else{
					$("<div/>", {
						class: "rankBox",
						onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
						
					}).append($("<div/>", {
						class: "rankNum"
						
					}).append($("<span/>",{
						text: index+1
						
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
						
					})).appendTo($("#rankType"));
				}
			})
		},
		error: function(err){
			console.log(err);
		}
	})
		
	})
});