<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/portal/box_banner.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/javaScrip.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/buildingdesign.css"/>" type="text/css" />

<body>

<%@ include file="../top.jsp" %>
<input type="hidden" id="currentTopic" value="建筑设计"/>

<SCRIPT language=javascript>
	$(document).ready(function () {

		var tab_navInfo = $("#tab_navInfo");
		$("a", tab_navInfo).bind("click", function () {
			$(".sub_nava2").hide();
			var li_ID = "#sub_" + $(this).attr('id');
			var target = $(li_ID);
			$(target).show();
			var dvMainNav = $("#tab_navInfo");
			$("a", dvMainNav).removeClass("current");
			$(this).addClass("current");
			return;
		});
		$(".sub_nava").hide();
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
</script>



<div class="container">
<div class="body">
<div class="box01">

	<%@include file="panel/BD0001.jsp" %>
	<%@include file="panel/BD0002.jsp" %>
	<%@include file="panel/BD0003.jsp" %>

</div>
<!--box01 end-->
<div class="box02">

	<%@include file="panel/BD0004.jsp" %>
	<%@include file="panel/BD0005.jsp" %>

</div>
<div class="clear"></div>
<!--box02 end-->
<div class="box03">
	<%@include file="panel/BD0006.jsp" %>
	<%@include file="panel/BD0007.jsp" %>
</div>
<!-- box03 end-->
<div class="box04">

	<%@include file="panel/BD0008.jsp" %>
	<%@include file="panel/BD0009.jsp" %>

</div>
<!-- box04 end-->
<div class="box05">

	<%@include file="panel/BD0010.jsp" %>
	<%@include file="panel/BD0011.jsp" %>

</div>
<!-- box05 end-->
<div class="box06">

	<%@include file="panel/BD0012.jsp" %>
	<%@include file="panel/BD0013.jsp" %>

</div>
<!-- box06 end-->
<div class="box07">

	<%@include file="panel/BD0014.jsp" %>
	<%@include file="panel/BD0015.jsp" %>

</div>
<!-- box07 end-->
<div class="box08">

	<%@include file="panel/BD0016.jsp" %>
	<%@include file="panel/BD0017.jsp" %>

</div>
<!-- box08 end-->

<%@include file="panel/BD0018.jsp" %>

<!-- box09 end-->
<div class="box10">

	<%@include file="panel/BD0019.jsp" %>
	<%@include file="panel/BD0020.jsp" %>
	<%@include file="panel/BD0021.jsp" %>

</div>
<!--box10 end-->
<div class="box11">
	<div class="box11_left">
		<div class="box11_left_top">
			<ul id="head">
				<li class="nav_left">
					<ul>
						<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="http://www.93idm.com/static/column/landscapedesign/buildingphoto.html/landscapedesign" target="_blank"><span>建筑摄影</span></a></li>
						<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>News centre</span></li>
					</ul>
				</li>
				<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="http://www.93idm.com/static/column/landscapedesign/buildingphoto.html/landscapedesign" target="_blank">更多.</a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="box11_left_mid">
			<ul class="pic">
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
				<li><a href="#" target="_blank"><img src="/img/box11_01.jpg" /></a><br /><span >老刘</span></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="box11_left_bottom">
			<ul class="left_list" >
				<li id="text_hide"><a href="#" target="_blank">·火狐就会认定高是50米，而IE先认定高是50米，但后面又</a></li>
				<li id="text_hide"><a href="#" target="_blank">·火狐就会认定高是50米，而IE先认定高是50米，但后面又</a></li>
				<li id="text_hide"><a href="#" target="_blank">·火狐就会认定高是50米，而IE先认定高是50米，但后面又</a></li>
			</ul>
			<ul class="left_list" id="left_list_right">
				<li id="text_hide"><a href="#" target="_blank">·火狐就会认定高是50米，而IE先认定高是50米，但后面又</a></li>
				<li id="text_hide"><a href="#" target="_blank">·火狐就会认定高是50米，而IE先认定高是50米，但后面又</a></li>
				<li id="text_hide"><a href="#" target="_blank">·火狐就会认定高是50米，而IE先认定高是50米，但后面又</a></li>
			</ul>
		</div>
	</div>
	<div class="box11_right">
		<div class="box11_right_top">
			<ul class="title">
				<li class="title_left" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="http://www.93idm.com/static/column/buildingdesign/btrain.html/buildingdesign" target="_blank"><span>培训</span></a></li>
				<li class="title_right" style="background: url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="http://www.93idm.com/static/column/buildingdesign/btrain.html/buildingdesign" target="_blank">更多.</a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="box11_right_bottom">
			<ul class="produce">
				<li id="image"><img src="/img/box11_02.jpg" /></li>
				<li class="text"><a href="#" target="_blank"><span><strong>田房地产总裁黄俊灿</strong></span><br />
					对于房地产企业来说，一调控销售总量就会降下来，说，一调控销售总量就会来，说，一调控销售总量就会</a>
				</li>                      <div class="clear"></div>

			</ul>
			<ul class="stand">
				<li><span>代表作：</span></li>
				<li><a href="#" target="_blank">边框和文字周围均有低像素放大的泛</a></li>
				<li><a href="#" target="_blank">边框和文字周围均有低像素放大的泛：</a></li>
			</ul>
			<ul class="produce" style="margin-top:10px;">
				<li id="sm_pic"><img src="/img/box11_03.jpg" /></li>
				<li class="text"  id="company"><a href="#" target="_blank"><span><strong>产总裁黄俊灿</strong></span><br />
					对于房地产企业来说会来，说，一调控销售总量就会</a>

				</li>
				<br /><a href="#" target="_blank" class="detail">详细>></a>
				<div class="clear"></div>
			</ul>
			<ul class="produce" style="margin-top:10px;">
				<li id="sm_pic"><img src="/img/box11_03.jpg" /></li>
				<li class="text"  id="company"><a href="#" target="_blank"><span><strong>产总裁黄俊灿</strong></span><br />
					对于房地产企业来说会来，说，一调控销售总量就会</a>

				</li>
				<br /><a href="#" target="_blank" class="detail">详细>></a>
				<div class="clear"></div>
			</ul>
		</div>
	</div>
</div>
<!--box11 end-->
<div class="box12">
	<div class="box12_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><span>设计企业</span></li>
					<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>News centre</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="#" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box12_bottom">
		<ul>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
			<li><a href="#" target="_blank"><img src="/img/box12_logo01.jpg" /></a></li>
		</ul>
	</div>
</div>
<!--box12 end-->
<div class="box13">
	<div class="box13_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><span>论坛推荐</span></li>
					<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>News centre</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="#" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box13_bottom">
		<div class="box11_left_bottom">
			<ul class="left_list" >
				<ul >
					<li id="text_hide"><a href="http://bbs.c-bm.com/index.asp?boardid=43" target="_blank">中国建材网论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://forum.yidaba.com/ " target="_blank">一大把论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://bbs.hc360.com/forum-368-1.html " target="_blank">聪慧网建筑建材论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://home.soufun.com/bbs/board/010_bjjcjj/" target="_blank">搜房建材论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://home.focus.cn/msglist/804/ " target="_blank">搜狐家居建材论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://club.china.alibaba.com/threadlist/142.html " target="_blank"><span  id="text">阿里巴巴商人论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://bbs.syjiancai.com/" target="_blank">沈阳建材网论坛 </a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
			</ul>
			<ul class="left_list" id="left_list_right">
				<ul >
					<li id="text_hide"><a href="http://www.ytbbs.com/forum-108-1.html " target="_blank">烟台建材家居论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://www.gxjc.com.cn/" target="_blank">广西建材网论坛 </a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://www.yes0752.com/bbs/ " target="_blank">惠州活动板房论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://jiatx.com/bbs/board/010_bjjcjj/ " target="_blank"> 家天下建材论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://www.hualongxiang.com/jiazhuangjc " target="_blank">化龙巷家具装修论坛 </a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://bbs.aiju.com/chanpin/jiancai/ " target="_blank">爱居者家居装修论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
				<ul >
					<li id="text_hide"><a href="http://www.szbbs.so/forum.php" ><span id="text" >深圳首论建材网论坛</a></li>
					<li id="date"><a href="#" target="_blank">(2012-12-26 10:10:05)</a></li>
				</ul>
				<div class="clear"></div>
			</ul>
			</ul>
		</div>
	</div>
</div>
</div>
</div>


<%@ include file="../bottom.jsp"%>
</body>
</html>