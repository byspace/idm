$(document).ready(function () {
        var dvMainNav = $("#dvMainNav");
        $("a", dvMainNav).bind("click", function () {
            $(".sub_nav").hide();
            var li_ID = "#sub_nav" + $(this).attr('id');
            var target = $(li_ID);
            $(target).show();

            var dvMainNav = $("#dvMainNav");
            $("a", dvMainNav).removeClass("current");
            $(this).addClass("current");
        });
        $(".sub_nav").hide();
        ////////////////////////////
        var tab_navInfo = $("#tab_navInfo");
        $("a", tab_navInfo).bind("click", function () {
            $(".sub_nav2").hide();
            var li_ID = "#sub_" + $(this).attr('id');
            var target = $(li_ID);
            $(target).show();
            var dvMainNav = $("#tab_navInfo");
            $("a", dvMainNav).removeClass("current");
            $(this).addClass("current");
            return;
        });
        $(".sub_nav").hide();
        ////////////////////////////
        var tab_navInfo = $("#dvNav_Btn");
        $("a", tab_navInfo).bind("click", function () {
            $(".sub_nav3").hide();
            var li_ID = "#dv_" + $(this).attr('id');
            var target = $(li_ID);
            $(target).show();
            var dvMainNav = $("#dvNav_Btn");
            $("a", dvMainNav).removeClass("current");
            $(this).addClass("current");
            return;
        });
        $(".sub_nav").hide();
        /////////////////Show Default////////////////////
        var currentNode1 = $(".current", $("#dvMainNav"));
        var li_ID = $("#sub_nav" + $(currentNode1).attr('id'));
        $(li_ID).show();

        var currentNode2 = $(".current", $("#tab_navInfo"));
        var sub2 = $("#sub_" + $(currentNode2).attr('id'));
        $(sub2).show();

        var currentNode3 = $(".current", $("#dvNav_Btn"));
        var sub3 = $("#dv_" + $(currentNode3).attr('id'));
        $(sub3).show();
    });