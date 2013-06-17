$(document).ready(function () {
     
        ////////////////////////////
        var tab_navInfo = $("#dvNav_Btn");
        $("a", tab_navInfo).bind("click", function () {
            $(".sub_nava3").hide();
            var li_ID = "#dv_" + $(this).attr('id');
            var target = $(li_ID);
            $(target).show();
            var dvMainNav = $("#dvNav_Btn");
            $("a", dvMainNav).removeClass("current");
            $(this).addClass("current");
            return;
        });
        $(".sub_nava").hide();
     
    });
	