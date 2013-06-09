<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/portal/index.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/tab_nav.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/javaScrip.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/show_banner.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/show_banner_up.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/tab_nav.js" />"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/mid.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/portal/tab.css"/>" type="text/css" />

<body>

<%@ include file="top.jsp" %>

<input type="hidden" id="currentTopic" value="首页"/>

<div class="container">
	<div class="main">
		<%--<div id="flash01">
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" id="zishu" style="RIGHT: -310px; POSITION: absolute; TOP: 0px" align="center" src="flash674.swf" width="300" height="800 ">
				<param name="movie" value="flash674.swf"> <!-- ie读取-->
				<param name="quality" value="high">
				<embed align="center" src="flash674.swf" width="300" height="800 " type="application/x-shockwave-flash" wmode="transparent" quality="high" ;=""> <!-- ff读取-->
			</object>
		</div>
		<div id="flash01">
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" id="zishu" style="left: -310px; POSITION: absolute; TOP: 0px" align="center" src="flash673.swf" width="300" height="800 ">
				<param name="movie" value="flash673.swf">
				<param name="quality" value="high">
				<embed align="center" src="flash673.swf" width="300" height="800 " type="application/x-shockwave-flash" wmode="transparent" quality="high">
			</object>
		</div>--%>


		<div class="con_top">
			<%@include file="panel/MP0001.jsp"%>
			<%@include file="panel/MP0002.jsp"%>



<div class="video">
	<div class="recommend">
		<ul>
			<li>
				<a href="http://www.93idm.com/column/videodetail.shtml" target="_blank"><img src="img/video01.jpg"></a>
			</li>
			<li>
				<a href="http://www.93idm.com/column/videodetail.shtml" target="_blank">亚洲濒危物种，外国派外出高管</a>
			</li>
		</ul>
	</div>
	<div class="small_video">
		<ul>
			<li><img src="/img/video1.png"></li>
			<li style="margin-top:3px;"><img src="/img/video_btn.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">如何成为一个成功的自由职业者 成为一个成功的自由职业者成为一个成功的自由职业者</a></li>
		</ul>
	</div><div class="clear"></div>
	<div class="small_video">
		<ul>
			<li><img src="/img/video1.png"></li>
			<li style="margin-top:3px;"><img src="/img/video_btn.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">如何成为一个成功的自由职业者 成为一个成功的自由职业者成为一个成功的自由职业者</a></li>
		</ul><div class="clear"></div>
	</div>
	<div class="more"><a href="#" target="_blank">更多精彩视频&gt;&gt;</a></div>
</div>
</div>
<div class="clear"></div><!--清除浮动专用-->
		<%@include file="panel/MP0004.jsp"%>

		<%@include file="panel/MP0005.jsp"%>

		<%@include file="panel/MP0006.jsp"%>



<div class="archtect">
	<div class="left">
		<ul>
			<li>
				<ul class="head">
					<li class="heading"><a href="http://preview.93idm.com/column/roomdesign.shtml" target="_blank"><strong><span style="color:#399b9a">室内</span>设计</strong></a></li>
					<li class="more"><a href="http://preview.93idm.com/column/roomdesign.shtml" target="_blank">+ 更多</a></li>
				</ul>
			</li>
			<li class="clear"></li>
			<li>
				<div class="work">
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000964.html" target="_blank"><img src="/img/room06.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000964.html" target="_blank">天来大酒店</a></li>
						<!--					   <li id="work01"><a ><img src="/img/icon1.png" />天来集团</a></li>
											  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000663.html" target="_blank"><img src="/img/room07.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000663.html" target="_blank">国泰天母 </a></li>
						<!-- <li id="work01"><a ><img src="/img/icon1.png" />谭精忠</a></li>
						  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000390.html" target="_blank"><img src="/img/room08.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000390.html" target="_blank">东方帝国多功能会馆</a></li>
						<!-- <li id="work01"><a ><img src="/img/icon1.png" />张清平</a></li>
						  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000965.html" target="_blank"><img src="/img/room01.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000965.html" target="_blank">工三便宜坊</a></li>
						<!-- <li id="work01"><a ><img src="/img/icon1.png" />王奕文 </a></li>
						  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000966.html" target="_blank"><img src="/img/room02.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000966.html" target="_blank">东方绘</a></li>
						<!-- <li id="work01"><a ><img src="/img/icon1.png" />张志红 </a></li>
						  <li><img src="/img/icon2.PNG" /><a>999</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000967.html" target="_blank"><img src="/img/room03.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000967.html" target="_blank">祥和百年酒店</a></li>
						<!-- <li id="work01"><a ><img src="/img/icon1.png" />许建国 </a></li>
						  <li><img src="/img/icon2.PNG" /><a>999</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000362.html" target="_blank"><img src="/img/room04.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000362.html" target="_blank">丽星温泉度假酒店</a></li>
						<!-- <li id="work01"><a ><img src="/img/icon1.png" />姚胜虎</a></li>
						  <li><img src="/img/icon2.PNG" /><a>999</a></li>-->
					</ul>
					<ul>
						<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000365.html" target="_blank"><img src="/img/room05.png"></a></li>
						<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000365.html" target="_blank">意兰庭保健会所</a></li>
						<!--<li id="work01"><a ><img src="/img/icon1.png" />许建国</a></li>
						  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
					</ul>
					<div class="clear"></div>
				</div>
				<div class="classy">
					<ul>
						<li><a href="http://www.93idm.com/static/column/roomdesign/roomdesigninfo.html/roomdesign" target="_blank">室内资讯</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/housevillas.html/roomdesign" target="_blank">家居别墅</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/businessspace.html/roomdesign" target="_blank">商业空间</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/buildingsaveenergy.html/roomdesign" target="_blank">建筑节能</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/rrecreation.html/roomdesign" target="_blank">休闲娱乐</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/rdesignthesis.html/roomdesign" target="_blank">毕业设计</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/exhibitiondisplay.html/roomdesign" target="_blank">展览展示</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/roomphoto.html/roomdesign" target="_blank">室内摄影</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/acousticdesign.html/roomdesign" target="_blank">声学设计</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/modeldownload.html/roomdesign" target="_blank">模型下载</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/designpaper.html/roomdesign" target="_blank">设计图纸</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/designcourse.html/roomdesign" target="_blank">设计教程</a></li>
						<li><a href="http://www.93idm.com/static/column/roomdesign/rtrainvideo.html/roomdesign" target="_blank">培训视频</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="house_right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">开发商介绍</a></li>
				<li class="more"><a href="http://www.93idm.com/static/column/developer/eownershouse.html/developer">+ 更多</a></li>
			</ul>
		</div>
		<div class="con_nav">
			<ul class="con_nav_head">
				<li><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000809.html" target="_blank"><img src="/img/develope01.png"></a></li>
				<li class="text"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000809.html" target="_blank">大梅沙旅游区 纯粹山海豪宅</a></li>

			</ul>
			<div class="clear"></div>

			<ul class="list">
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000803.html" target="_blank">SOHO中山广场 A608</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000799.html" target="_blank">59万打造460平米独栋混搭风格别墅</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000805.html" target="_blank">超火爆87平低调奢华三居婚房</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000547.html" target="_blank">新潮家具古典混搭出76平花花世界</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000544.html" target="_blank">98平清新阳光小户型</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000542.html" target="_blank">完美的梦想之家</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000521.html" target="_blank">时尚家居 居室空间的华贵之美</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000520.html" target="_blank">小萝莉的梦想卧室</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eownershouse/201302/20130200000499.html" target="_blank">90平浪漫爱琴海之家</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="clear"></div>
<div class="photo_show">
	<div>
		<ul class="head">
			<li class="heading"><a href="http://preview.93idm.com/static/column/landscapedesign/buildingphoto.html/landscapedesign" target="_blank"><strong><span style="color:#399b9a">摄景</span>展示</strong></a></li>
			<li class="more"><a href="http://preview.93idm.com/static/column/landscapedesign/buildingphoto.html/landscapedesign" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="show_banner_up">
		<ul style="left: -530.3657537611069px; width: 1470px;">
			<li><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201302/20130200000396.html" target="_blank"><img src="/img/show-banner01.png"></a></li>
			<li><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201302/20130200000309.html" target="_blank"><img src="/img/show-banner02.png"></a></li>
			<li><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201305/20130500001798.html" target="_blank"><img src="/img/show-banner03.png"></a></li>
			<li><a href="http://www.93idm.com/aarticle/landscapedesign/plandesign/201302/20130200000303.html" target="_blank"><img src="/img/show-banner04.png"></a></li>
		</ul>
		<div class="btnBg" style="opacity: 0.3;"></div><div class="btn"><span class="">1</span><span class="">2</span><span class="on">3</span><span class="">4</span></div></div>
	<div class="work">

		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/waterstate/201302/20130200000833.html" target="_blank"><img src="/img/work34.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/waterstate/201302/20130200000833.html" target="_blank">悉尼5号</a></li>
			<!--	   <li id="work01"><a ><img src="/img/icon1.png" />澳派景观</a></li>
				  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>

		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/touristspot/201302/20130200000838.html" target="_blank"><img src="/img/work28.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/touristspot/201302/20130200000838.html" target="_blank">香溪澜院 </a></li>
			<!--  <li id="work01"><a ><img src="/img/icon1.png" />上海奥斯本</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/touristspot/201302/20130200000829.html" target="_blank"><img src="/img/work29.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/touristspot/201302/20130200000829.html" target="_blank">海滩设计</a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" />澳派景观规划</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000767.html" target="_blank"><img src="/img/work30.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000767.html" target="_blank">舒适的景观</a></li>
			<!--<li id="work01"><a ><img src="/img/icon1.png" />澳派景观规划</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000763.html" target="_blank"><img src="/img/work31.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000763.html" target="_blank">清华广场 </a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" /> 北京易德地景</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>

		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000731.html" target="_blank"><img src="/img/work32.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000731.html" target="_blank">台州市中央商务区</a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" />顾力天</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000686.html" target="_blank"><img src="/img/work33.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/squarespace/201302/20130200000686.html" target="_blank">河北沧州 </a></li>
			<!--	   <li id="work01"><a ><img src="/img/icon1.png" />房木生 </a></li>
				  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://preview.93idm.com/aarticle/landscapedesign/waterstate/201302/20130200000825.html" target="_blank"><img src="/img/work35.png" width="115" height="90"></a></li>
			<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/waterstate/201302/20130200000825.html" target="_blank">庆丰公园</a></li>
			<!--  <li id="work01"><a ><img src="/img/icon1.png" />北京创新景观园林</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>

	</div>
	<div class="clear"></div>
</div>
<div class="photo_show">
	<div>
		<ul class="head">
			<li class="heading"><a href="http://preview.93idm.com/column/effectmodel.shtml" target="_blank"><strong><span style="color:#399b9a">效果图</span>模型</strong></a></li>
			<li class="more"><a href="http://preview.93idm.com/column/effectmodel.shtml" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="show_banner">
		<ul style="left: -588px; width: 1470px;">
			<li><a href="http://www.93idm.com/aarticle/landscapedesign/waterstate/201302/20130200000307.html" target="_blank"><img src="/img/show-banner05.png"></a></li>
			<li><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201305/20130500001683.html" target="_blank"><img src="/img/show-banner06.png"></a></li>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000350.html" target="_blank"><img src="/img/show-banner07.png"></a></li>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000349.html" target="_blank"><img src="/img/show-banner08.png"></a></li>
		</ul>
		<div class="btnBg" style="opacity: 0.3;"></div><div class="btn"><span class="">1</span><span class="">2</span><span class="on">3</span><span class="">4</span></div></div>
	<div class="work">

		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000421.html" target="_blank"><img src="/img/work15.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000421.html" target="_blank">芬兰玻璃旅馆 “躺”享极光盛宴</a></li>
			<!--	   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
				  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000420.html" target="_blank"><img src="/img/work16.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000420.html" target="_blank">跳舞的房子</a></li>
			<!--  <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
			  <li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000347.html" target="_blank"><img src="/img/work9.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000347.html" target="_blank">天津首座意式人行天桥月底建成</a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000339.html" target="_blank"><img src="/img/work10.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000339.html" target="_blank">长沙万家丽国际MALL</a></li>
			<!--	   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
				  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000338.html" target="_blank"><img src="/img/work11.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000338.html" target="_blank">打造百座岭南特色现代建筑</a></li>
			<!--		   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
					  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000336.html" target="_blank"><img src="/img/work12.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000336.html" target="_blank">福建仙游影城方案获批</a></li>
			<!--	   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
				  <li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000335.html" target="_blank"><img src="/img/work13.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000335.html" target="_blank">成都文化中心建筑设计方案之管弦乐器</a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
			  <li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>
		<ul>
			<li><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000422.html" target="_blank"><img src="/img/work14.png"></a></li>
			<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000422.html" target="_blank">杭州中国人寿大厦</a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" />21世纪建筑设计网</a></li>
			  <li><img src="/img/icon2.PNG" /><a>0</a></li>-->
		</ul>

	</div>
	<div class="clear"></div>
</div>
<div class="develope">
	<div class="left">
		<ul class="head">
			<li class="heading"><a href="http://preview.93idm.com/column/developers.shtml" target="_blank"><strong><span style="color:#399b9a">地产</span>开发商</strong></a></li>
			<li class="more"><a href="http://www.93idm.com/column/developers.shtml" target="_blank">+ 更多</a></li>
		</ul>
		<ul class="list_left">
			<li class="clear"></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000360.html" target="_blank"><strong>银川阅海湾双子塔将由JPA操刀设计</strong></a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000361.html" target="_blank">中国斜塔——西安万寿塔将被“扶正”</a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000359.html" target="_blank">雅加达的天空之城</a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000356.html" target="_blank">香港一级历史建筑何东花园或被清拆</a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000355.html" target="_blank"><strong>香港西九文化区首个艺术场馆建筑方案选定</strong></a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000354.html" target="_blank">香港或将明年开放首座零碳建筑</a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000352.html" target="_blank">西九戏曲中心将由两香港建筑师设计</a></li>
			<li id="ie_list"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000350.html" target="_blank">未来一片“石屎森林”将在珠江新城拔地而起</a></li>
		</ul>
		<ul class="right_list">
			<li class="list_right_top">
				<ul>
					<li><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000335.html" target="_blank"><img src="/img/develope03.png"></a></li>
					<li class="text"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000335.html" target="_blank"><span><strong>成都文化中心设计方案之管弦乐器</strong></span><br>
						昨日，省住建厅在其网站上公布了天府新区省级文化中心的三套建筑设计方案，公开征求... </a>
					</li>
					<div class="clear"></div>
				</ul>
			</li>
			<li class="text_hide"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000347.html" target="_blank">天津首座意式人行天桥月底建成</a></li>
			<li class="text_hide"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000344.html" target="_blank">南京推到颜料坊 欲建购物中心</a></li>
			<li class="text_hide"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000339.html" target="_blank">历史性的封顶：长沙万家丽国际MALL</a></li>
			<li class="text_hide"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000338.html" target="_blank"><strong>广州新城市规划：打造百座岭南特色现代建筑</strong></a></li>
			<li class="text_hide"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000336.html" target="_blank">福建仙游影城方案获批 有望明年动工建设</a></li>
			<li class="text_hide"><a href="http://www.93idm.com/aarticle/effectmodel/eindudynamic/201302/20130200000334.html" target="_blank">常州也现奇葩建筑“大楼梯”</a></li>
		</ul>
	</div>
	<div class="right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">开发商介绍</a></li>
				<li class="more"><a href="http://www.93idm.com/column/developers.shtml">+ 更多</a></li>
			</ul>
		</div>
		<div class="list">
			<ul class="text">
				<li class="order"><a>1</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000751.html" target="_blank">万科公园</a></li>
				<li class="price">21000</li>
				<li class="address">罗湖</li>
			</ul>
			<ul class="text">
				<li class="order"><a>2</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000757.html" target="_blank">福东龙华府</a></li>
				<li class="price">20000</li>
				<li class="address">龙华</li>
			</ul>
			<ul class="text">
				<li class="order"><a>3</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000748.html" target="_blank">美佳华首誉</a></li>
				<li class="price">15000</li>
				<li class="address">深圳龙华</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a>4</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000759.html" target="_blank">济高·丰奥嘉园</a></li>
				<li class="price">8700</li>
				<li class="address">济南</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a>5</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000760.html" target="_blank">信义嘉御山</a></li>
				<li class="price">22000</li>
				<li class="address">坂田</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a>6</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000761.html" target="_blank">THE TOWN乐城</a></li>
				<li class="price">16000</li>
				<li class="address">大运新城</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a>7</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000762.html" target="_blank">御锦公馆</a></li>
				<li class="price">33000</li>
				<li class="address">福田</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a>8</a></li>
				<li class="name"><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000811.html" target="_blank">乐众上品</a></li>
				<li class="price">未知</li>
				<li class="address">深圳</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a>9</a></li>
				<li class="name"><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000442.html">奢华私人住宅</a></li>
				<li class="price">保密</li>
				<li class="address">巴西</li>
			</ul>
			<ul class="text">
				<li class="order_black"><a style="text-align:center; margin-left:0px;">10</a></li>
				<li class="name"><a href="http://www.93idm.com/aarticle/effectmodel/edesignfront/201302/20130200000446.html" target="_blank">克莱因瓶宅</a></li>
				<li class="price">保密</li>
				<li class="address">摩林顿半岛</li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
</div>
<div class="hire">
	<div class="hire_top">
		<ul class="head">
			<li class="heading"><a href="http://preview.93idm.com/column/job.shtml" target="_blank"><strong><span style="color:#399b9a">企业招聘</span>推荐</strong></a></li>
			<li class="more"><a href="http://preview.93idm.com/column/job.shtml" target="_blank">+ 更多</a></li>
		</ul>
	</div>
	<div class="clear"></div>

	<div class="hire_body">
		<ul class="text_right" style="border:none;">
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
		</ul>
		<ul class="text_right">
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
		</ul>
		<ul class="text_right" style=" margin-right:40px;">
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
			<li id="ie_list"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="hire_bottom">
		<ul>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
			<li><a href="#" target="_blank"><img src="/img/hire-logo.png"></a></li>
		</ul>
	</div>
</div>
<div class="desighner">
	<div class="desighner_left">
		<ul class="head">
			<li class="heading"><a href="http://www.93idm.com/static/column/developer/epersonvisiting.html/developer" target="_blank"><strong><span style="color:#399b9a">推荐</span></strong>设计师</a></li>
			<li class="more"><a href="http://www.93idm.com/static/column/developer/epersonvisiting.html/developer" target="_blank">+ 更多</a></li>

		</ul>
		<div class="clear"></div>
		<ul class="pic">
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner27.png"></a><br><span>马岩松 </span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner4.png"></a><br><span>张永和</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner5.png"></a><br><span>隈研吾</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner6.png"></a><br><span>卒母托</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner1.png"></a><br><span>黄竹山</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner2.png"></a><br><span>杨旭光</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner3.png"></a><br><span>殷艳明</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner7.png"></a><br><span>卡茨</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner8.png"></a><br><span>贝祖贻</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner9.png"></a><br><span>陈伯康</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner10.png"></a><br><span>Marshall</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner11.png"></a><br><span>盖革</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner12.png"></a><br><span>郭智敏</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner13.png"></a><br><span>卓健</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner14.png"></a><br><span>Terence</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner15.png"></a><br><span>王绍箕</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner16.png"></a><br><span>梁骞</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner17.png"></a><br><span>李龑</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner18.png"></a><br><span>吴伟坚</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner19.png"></a><br><span>朱锫</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner20.png"></a><br><span>徐志剑</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner21.png"></a><br><span>安德尔</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner22.png"></a><br><span>高玲玲</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner23.png"></a><br><span>张顺昌</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner24.png"></a><br><span>张惟刚</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner25.png"></a><br><span>周巍</span></li>
			<li><a href="/membercenter/design1.shtml" target="_blank"><img src="/img/desighner26.png"></a><br><span>安藤忠雄</span></li>
		</ul>
	</div>
	<div class="desighner_right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">开发商介绍</a></li>
				<li class="more"><a href="#" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="list">
			<ul class="title">
				<li class="area">地区</li>
				<li class="position">职位</li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>
			<ul class="con">
				<li class="area"><a href="#" target="_blank">北京</a></li>
				<li class="position"><a href="#" target="_blank">互动设计师</a></li>
			</ul>

			<div class="clear"></div>
		</div>
	</div>
</div>
<div class="clear"></div>
<!--material-->
<div class="material">
	<div class="left">
		<div class="head">
			<ul class="head">
				<li class="heading"><a href="http://www.93idm.com/static/column/buildingdesign/buildingstruct.html/buildingdesign" target="_blank"><strong><span style="color:#399b9a">建筑</span></strong>材料</a></li>
				<li class="more"><a href="http://www.93idm.com/static/column/buildingdesign/buildingstruct.html/buildingdesign" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="clear"></div>
		<div class="left_top">
			<ul>
				<li><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000736.html" target="_blank"><img src="/img/material1.png"><br><span>HT玻璃</span></a></li>
				<li><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000740.html" target="_blank"><img src="/img/material2.png"><br><span>多功能玻璃地板</span></a></li>
				<li><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000702.html" target="_blank"><img src="/img/material3.png"><br><span>前台设计石材</span></a></li>
				<li><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000741.html" target="_blank"><img src="/img/material4.png"><br><span>黑龙江木材</span></a></li>
				<li><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000750.html" target="_blank"><img src="/img/material5.png"><br><span>均热炉</span></a></li>
			</ul>
		</div>
		<div class="left_bottom">
			<ul class="text_right" style="border:none;">
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000740.html" target="_blank">新型多功能玻璃地板问世 或将成为体育场地的新宠</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000738.html" target="_blank">中国人防工程步入绿色照明之路</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000735.html" target="_blank">创意家居：金属与木材搭配充气家具</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000728.html" target="_blank">新型保温材料既保温又能防火</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000727.html" target="_blank">大王椰3D高清橱柜板高品质橱柜专用板材</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000725.html" target="_blank">创新：新型照明板问世 灯泡或被淘汰</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000720.html" target="_blank">德国智能压感地板出世 智能家居前景可观</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000708.html" target="_blank">日本公司新研发出含人工DNA防伪油墨</a></li>
			</ul>
			<ul class="text_right">
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000698.html" target="_blank">茂名石化公司研发高熔指线型聚乙烯粉末涂料</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000619.html" target="_blank">美国开发可降解的生物塑料容器</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000682.html" target="_blank">功能性涂料2013年受热捧 引领行业新潮流</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000689.html" target="_blank">环氧树脂耐磨地坪漆升级水性环保产品成趋势</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000743.html" target="_blank">英国借助细菌地沟油制造可降解生物塑料</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000744.html" target="_blank">葡萄牙科研人员发明一种新型纳米涂料</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000746.html" target="_blank">深度分析塑化剂性状 推广生产无毒PVC塑料制品</a></li>
				<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/buildingstruct/201302/20130200000747.html" target="_blank">德龙钢管公司试制的X80钢级钢管通过检测</a></li>
			</ul>
		</div>
	</div>
	<div class="right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">材料供求信息</a></li>
				<li class="more"><a href="#" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="list">
			<ul class="text">
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
			</ul>
		</div>
	</div>
</div>
<!--material end-->
<!--project-->
<div class="project">
	<div class="left">
		<div class="body">
			<div class="text_right" style="border:none;" id="tab_text">
				<div class="tab_nav" id="tab_navInfo">
					<ul>
						<li><a class="current" id="dvNav1">热门项目</a></li>
						<li><a id="dvNav2">委托项目</a></li>
						<li><a id="dvNav3">完成订单</a></li>
						<li><a id="dvNav4">委托订单</a></li>
					</ul>
				</div>
				<div class="clear"></div>
				<div id="sub_dvNav1" class="sub_nav2" style="">
					<ul>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>

					</ul>
				</div>
				<div id="sub_dvNav2" class="sub_nav2">
					<ul>
						<li id="ie_text"><a href="#" target="_blank">功的一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					</ul>
				</div>
				<div id="sub_dvNav3" class="sub_nav2">
					<ul>
						<li id="ie_text"><a href="#" target="_blank">功的一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					</ul>
				</div>
				<div id="sub_dvNav4" class="sub_nav2">
					<ul>
						<li id="ie_text"><a href="#" target="_blank">功的一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
						<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					</ul>
				</div>
			</div>
			<div class="text_right" id="text">
				<ul>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
					<li id="ie_text"><a href="#" target="_blank">功的自由职业者成为一个成功的自由职业者如何成为</a></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>

		<div class="bottom">
			<ul>
				<li><a href="#" target="_blank"><img src="/img/ad-1.png"></a></li>
				<li><a href="#" target="_blank"><img src="/img/ad-2.png"></a></li>
			</ul>
		</div>
	</div>
	<div class="right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">材料厂商</a></li>
				<li class="more"><a href="#" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="list">
			<ul class="text">
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司</a></li>
				<li id="ie_list"><a href="#" target="_blank">【建筑材料】珠海亚太电子科技有限公司成功的自由职业者如何</a></li>
			</ul>
		</div>
	</div>
</div>
<!--project end-->
<!--plan-->
<div class="plan">
	<div class="plan_top">
		<ul class="head">
			<li class="heading"><a><strong><span style="color:#399b9a">平面设计</span></strong>推荐</a></li>
			<li class="more"><a href="#" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="plan_bottom">
		<ul>
			<li><img src="/img/plan.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">WUHAN grand land AN grand</a></li>
			<!--  <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
				<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>
		<ul>
			<li><img src="/img/plan.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">WUHAN grand land AN grand</a></li>
			<!--<li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
			<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>
		<ul>
			<li><img src="/img/plan.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">WUHAN grand land AN grand</a></li>
			<!--  <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
				<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>
		<ul>
			<li><img src="/img/plan.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">WUHAN grand land AN grand</a></li>
			<!--    <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
				<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul><ul>
		<li><img src="/img/plan.png"></li>
		<li class="title" id="ie_title"><a href="#" target="_blank">WUHAN grand land AN grand</a></li>
		<!--    <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
			<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
	</ul>
		<ul>
			<li><img src="/img/plan.png"></li>
			<li class="title" id="ie_title"><a href="#" target="_blank">WUHAN grand land AN grand</a></li>
			<!--   <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
				<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
		</ul>

	</div>
	<div class="clear"></div>

</div>
<!--plan end-->
<div class="show_work">
	<div class="left_all">
		<div class="left">
			<div class="left_top">
				<ul class="head">
					<li class="heading"><a><strong><span style="color:#399b9a">设计师作品</span></strong>展示</a></li>
					<li class="more"><a href="#" target="_blank">+ 更多</a></li>
				</ul>
			</div>
			<div class="left_bottom">
				<ul>
					<li><a href="http://preview.93idm.com/aarticle/landscapedesign/touristspot/201303/20130300000995.html" target="_blank"><img src="/img/show-work01.png"></a>  </li>
					<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/landscapedesign/touristspot/201303/20130300000995.html" target="_blank">林璎</a></li>
					<!--  <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<ul>
					<li><a href="http://www.93idm.com/aarticle/landscapedesign/squarespace/201303/20130300001004.html" target="_blank"><img src="/img/show-work02.png"></a></li>
					<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/landscapedesign/squarespace/201303/20130300001004.html" target="_blank">杨克</a></li>
					<!--    <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<ul>
					<li><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001013.html" target="_blank"><img src="/img/show-work03.png"></a></li>
					<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001013.html" target="_blank">张华</a></li>
					<!--   <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<ul>
					<li><a href="http://preview.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001026.html" target="_blank"><img src="/img/show-work04.png"></a></li>
					<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001026.html" target="_blank">赵仲贵 </a></li>
					<!--  <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="left">
			<div class="left_top">
				<ul class="head">
					<li class="heading"><a><strong><span style="color:#399b9a">企业作品</span></strong>展示</a></li>
					<li class="more"><a href="#" target="_blank">+ 更多</a></li>
				</ul>
			</div>
			<div class="left_bottom">
				<ul>
					<li><a href="http://preview.93idm.com/aarticle/buildingdesign/resbuilding/201303/20130300001046.html" target="_blank"><img src="/img/show-work05.png"></a></li>
					<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/buildingdesign/resbuilding/201303/20130300001046.html" target="_blank">OFIS建筑事务所 </a></li>
					<!-- <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
					<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<ul>
					<li><a href="http://preview.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001060.html" target="_blank"><img src="/img/show-work06.png"></a></li>
					<li class="title" id="ie_title"><a href="http://preview.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001060.html" target="_blank">华太设计 </a></li>
					<!--   <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<ul>
					<li><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001079.html" target="_blank"><img src="/img/show-work07.png"></a></li>
					<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001079.html" target="_blank">3XN建筑师事务所 </a></li>
					<!--    <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<ul>
					<li><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001092.html" target="_blank"><img src="/img/show-work.png"></a></li>
					<li class="title" id="ie_title"><a href="http://www.93idm.com/aarticle/buildingdesign/businessbuilding/201303/20130300001092.html" target="_blank">SOM 建筑事务所 </a></li>
					<!--  <li id="work01"><a ><img src="/img/icon1.png" />gmp-von Gerkan, Marg and Partners</a></li>
						<li><img src="/img/icon2.PNG" /><a>999</a></li>-->
				</ul>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">材料厂商</a></li>
				<li class="more"><a href="#" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="con">
			<ul class="produce">
				<li><img src="/img/person.png"></li>
				<li class="text"><a href="#" target="_blank"><span><strong>田房地产总裁黄俊灿</strong></span><br>
					对于房地产企业来说，一调控销售总量就会降下来，说，一调控销售总量就会来，说，一调控销售总量就会</a>
				</li>                      <div class="clear"></div>

			</ul>
			<ul class="stand">
				<li><span>代表作：</span></li>
				<li><a href="#" target="_blank">边框和文字周围均有低像素放大的泛</a></li>
				<li><a href="#" target="_blank">边框和文字周围均有低像素放大的泛</a></li>

			</ul>
			<ul class="produce" style="margin-top:10px;">
				<li><img src="/img/materia.png"></li>
				<li class="text" id="company"><a href="#" target="_blank"><span><strong>产总裁黄俊灿</strong></span><br>
					对于房地产企业来说会来，说，一调控销售总量就会</a>

				</li>
				<br><a href="#" target="_blank" class="detail">详细&gt;&gt;</a>
				<div class="clear"></div>
			</ul>
			<ul class="produce" style="margin-top:10px;">
				<li><img src="/img/materia.png"></li>
				<li class="text" id="company"><a href="#" target="_blank"><span><strong>产总裁黄俊灿</strong></span><br>
					对于房地产企业来说会来，说，一调控销售总量就会</a>

				</li>
				<br><a href="#" target="_blank" class="detail">详细&gt;&gt;</a>
				<div class="clear"></div>
			</ul>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--discuss-->
<div class="discuss">
	<div class="discuss_top">
		<ul class="head">
			<li class="heading"><a><strong><span style="color:#399b9a">论坛</span></strong>推荐</a></li>
			<li class="more"><a href="#" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="discuss_bottom">
		<ul class="text_right" style="border:none; margin-right:80px;">
			<li id="ie_text"><a href="http://bbs.c-bm.com/index.asp?boardid=43" target="_blank"><span id="text">中国建材网论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://forum.yidaba.com/ " target="_blank"> <span id="text">一大把论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://bbs.hc360.com/forum-368-1.html " target="_blank"><span id="text">聪慧网建筑建材论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://home.soufun.com/bbs/board/010_bjjcjj/" target="_blank"><span id="text">搜房建材论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://home.focus.cn/msglist/804/ " target="_blank"><span id="text">搜狐家居建材论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://club.china.alibaba.com/threadlist/142.html " target="_blank"><span id="text">阿里巴巴商人论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://bbs.syjiancai.com/" target="_blank"><span id="text">沈阳建材网论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>

		</ul>
		<ul class="text_right">
			<li id="ie_text"><a href="http://www.ytbbs.com/forum-108-1.html " target="_blank"><span id="text">烟台建材家居论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://www.gxjc.com.cn/" target="_blank"><span id="text">广西建材网论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://www.yes0752.com/bbs/ " target="_blank"><span id="text">惠州活动板房论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://jiatx.com/bbs/board/010_bjjcjj/ " target="_blank"> <span id="text">家天下建材论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://www.hualongxiang.com/jiazhuangjc " target="_blank"><span id="text">化龙巷家具装修论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://bbs.aiju.com/chanpin/jiancai/ " target="_blank"><span id="text">爱居者家居装修论坛</span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://www.szbbs.so/forum.php"><span id="text">深圳首论建材网论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
			<li id="ie_text"><a href="http://www.whpengxin.cn/" target="_blank"><span id="text">山东建材网论坛 </span><span id="date">(2012-12-12 18:05:51)</span></a></li>
		</ul>
	</div>
</div>
<!--discuss end -->
<div class="software">
	<div class="software_top">
		<ul class="head">
			<li class="heading"><a><strong><span style="color:#399b9a">设计</span></strong>软件</a></li>
			<li class="more"><a href="#" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="software_bottom">
		<ul>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木匠大板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木匠地板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木匠地板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木师地板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木匠地板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木师地板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木师地板</span></a></li>
			<li><a href="#" target="_blank"><img src="/img/software.png"><br><span>木师地板</span></a></li>
		</ul>
	</div>
</div>
</div>
</div>

<%@ include file="bottom.jsp"%>
</body>
</html>