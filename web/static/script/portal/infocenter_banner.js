$(function(){
	$(".flashBanner").each(function(){
		var timer;
		$(".flashBanner .mask img").click(function(){
			var index = $(".flashBanner .mask img").index($(this));	
			changeImg(index);
		}).eq(0).click();
		$(this).find(".mask").animate({
			"bottom":"0"	
		},0);
		$(".flashBanner").hover(function(){
			clearInterval(timer);	
		},function(){
			timer = setInterval(function(){
				var show = $(".flashBanner .mask img.show").index();
				if (show >= $(".flashBanner .mask img").length-1)
					show = 0;
				else
					show ++;
				changeImg(show);
			},6000);
		});
		function changeImg (index)
		{
			$(".flashBanner .mask img").removeClass("show").eq(index).addClass("show");
			$(".flashBanner .bigImg").parents("a").attr("href",$(".flashBanner .mask img").eq(index).attr("link"));
			$(".flashBanner .bigImg").hide().attr("src",$(".flashBanner .mask img").eq(index).attr("uri")).fadeIn("slow");
		}
		timer = setInterval(function(){
			var show = $(".flashBanner .mask img.show").index();
			if (show >= $(".flashBanner .mask img").length-1)
				show = 0;
			else
				show ++;
			changeImg(show);
		},6000);
	});
});