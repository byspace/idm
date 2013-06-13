// JavaScript Document

$(function() {
	var sWidth = $(".box05_banner").width(); //获取焦点图的宽度（显示面积）
	var len = $(".box05_banner ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明长条
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span>" + (i+1) + "</span>";
	}
	btn += "</div>"
	$(".box05_banner").append(btn);
	$(".box05_banner .btnBg").css("opacity",0.3);
	
	//为数字按钮添加鼠标滑入事件，以显示相应的内容
	$(".box05_banner .btn span").mouseenter(function() {
		index = $(".box05_banner .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseenter");
	
	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$(".box05_banner ul").css("width",sWidth * (len + 1));
	
	//鼠标滑入某li中的某div里，调整其同辈div元素的透明度，由于li的背景为黑色，所以会有变暗的效果
	/*$(".banner ul li div").hover(function() {
		$(this).siblings().css("opacity",0.7);
	},function() {
		$(".banner ul li div").css("opacity",1);
	});*/
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$(".box05_banner").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			if(index == len) { //如果索引值等于li元素个数，说明最后一张图播放完毕，接下来要显示第一张图，即调用showFirPic()，然后将索引值清零
				showFirPic();
				index = 0;
			} else { //如果索引值不等于li元素个数，按普通状态切换，调用showPics()
				showPics(index);
			}
			index++;
		},3000); //此3000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$(".box05_banner ul").stop(true,false).animate({"left":nowLeft},500); //通过animate()调整ul元素滚动到计算出的position
		$(".box05_banner .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
	}
	
	function showFirPic() { //最后一张图自动切换到第一张图时专用
		$(".box05_banner ul").append($(".box05_banner ul li:first").clone());
		var nowLeft = -len*sWidth; //通过li元素个数计算ul元素的left值，也就是最后一个li元素的右边
		$(".box05_banner ul").stop(true,false).animate({"left":nowLeft},500,function() {
			//通过callback，在动画结束后把ul元素重新定位到起点，然后删除最后一个复制过去的元素
			$(".box05_banner ul").css("left","0");
			$(".box05_banner ul li:last").remove();
		}); 
		$(".box05_banner .btn span").removeClass("on").eq(0).addClass("on"); //为第一个按钮添加选中的效果
	}
});



// JavaScript Document

$(function() {
	var sWidth = $(".box06_banner").width(); //获取焦点图的宽度（显示面积）
	var len = $(".box06_banner ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明长条
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span>" + (i+1) + "</span>";
	}
	btn += "</div>"
	$(".box06_banner").append(btn);
	$(".box06_banner .btnBg").css("opacity",0.3);
	
	//为数字按钮添加鼠标滑入事件，以显示相应的内容
	$(".box06_banner .btn span").mouseenter(function() {
		index = $(".box06_banner .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseenter");
	
	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$(".box06_banner ul").css("width",sWidth * (len + 1));
	
	//鼠标滑入某li中的某div里，调整其同辈div元素的透明度，由于li的背景为黑色，所以会有变暗的效果
	/*$(".banner ul li div").hover(function() {
		$(this).siblings().css("opacity",0.7);
	},function() {
		$(".banner ul li div").css("opacity",1);
	});*/
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$(".box06_banner").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			if(index == len) { //如果索引值等于li元素个数，说明最后一张图播放完毕，接下来要显示第一张图，即调用showFirPic()，然后将索引值清零
				showFirPic();
				index = 0;
			} else { //如果索引值不等于li元素个数，按普通状态切换，调用showPics()
				showPics(index);
			}
			index++;
		},3000); //此3000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$(".box06_banner ul").stop(true,false).animate({"left":nowLeft},500); //通过animate()调整ul元素滚动到计算出的position
		$(".box06_banner .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
	}
	
	function showFirPic() { //最后一张图自动切换到第一张图时专用
		$(".box06_banner ul").append($(".box06_banner ul li:first").clone());
		var nowLeft = -len*sWidth; //通过li元素个数计算ul元素的left值，也就是最后一个li元素的右边
		$(".box06_banner ul").stop(true,false).animate({"left":nowLeft},500,function() {
			//通过callback，在动画结束后把ul元素重新定位到起点，然后删除最后一个复制过去的元素
			$(".box06_banner ul").css("left","0");
			$(".box06_banner ul li:last").remove();
		}); 
		$(".box06_banner .btn span").removeClass("on").eq(0).addClass("on"); //为第一个按钮添加选中的效果
	}
});