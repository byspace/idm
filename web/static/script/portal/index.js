$(function(){

	/*$("#bannerShowcase").awShowcase(
		{
			content_width:			300,
			content_height:			360,
			fit_to_parent:			false,
			auto:					true,
			interval:				3000,
			continuous:				false,
			loading:				true,
			tooltip_width:			200,
			tooltip_icon_width:		32,
			tooltip_icon_height:	32,
			tooltip_offsetx:		18,
			tooltip_offsety:		0,
			arrows:					false,
			buttons:				true,
			btn_numbers:			false,
			keybord_keys:			true,
			mousetrace:				false, *//* Trace x and y coordinates for the mouse *//*
			pauseonover:			true,
			stoponclick:			true,
			transition:				'hslide', *//* hslide/vslide/fade *//*
			transition_delay:		300,
			transition_speed:		500,
			show_caption:			'show', *//* onload/onhover/show *//*
			thumbnails:				false,
			thumbnails_position:	'outside-last', *//* outside-last/outside-first/inside-last/inside-first *//*
			thumbnails_direction:	'horizontal', *//* vertical/horizontal *//*
			thumbnails_slidex:		0, *//* 0 = auto / 1 = slide one thumbnail / 2 = slide two thumbnails / etc. *//*
			dynamic_height:			false, *//* For dynamic height to work in webkit you need to set the width and height of images in the source. Usually works to only set the dimension of the first slide in the showcase. *//*
			speed_change:			false, *//* Set to true to prevent users from swithing more then one slide at once. *//*
			viewline:				false *//* If set to true content_width, thumbnails, transition and dynamic_height will be disabled. As for dynamic height you need to set the width and height of images in the source. *//*
		});

	initTabs($("div.news"));*/
});



function initTabs(container){

	$("a.tab", container).each(function(){
		$(this).click(function(){
			$("a.tab", container).parent().attr("class", "newsearchinsidew");
			$(this).parent().attr("class", "newsearchinsider");

			$("div.panels > div", container).hide();
			$("div.panels > div#" + $(this).attr("id"), container).show();
		});
	});

	/*o.className="newsearchinsider";
	var j;
	var id;
	var e;
	for(var i=1;i<=4;i++){
		id ="v"+i;
		j = document.getElementById(id);
		e = document.getElementById("e"+i);
		if(id != o.id){
			j.className="newsearchinsidew";
			e.style.visibility = "hidden";
		}else{
			e.style.visibility = "visible";
		}
	}

	var id = o.id+"";
	var dd=id.substring(1,2);
	var curForm = document.getElementById("FormSearch"+dd);
	var inputv ;
	for(var i=1;i<=4;i++){
		var otherForm = document.getElementById("FormSearch"+i);
	}*/

}
function doOut(o){

}

