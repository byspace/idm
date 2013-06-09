<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="view">
	<div class="left">
		<ul>
			<li>
				<ul class="head">
					<li class="heading"><a href="<spring:url value="/portal/view/index" />" target="_blank"><strong><span style="color:#399b9a">景观</span>设计</strong></a></li>
					<li class="more"><a href="<spring:url value="/portal/view/index" />" target="_blank">+ 更多</a></li>
				</ul>
			</li>
			<li class="clear"></li>
			<li>
				<div class="work">
					<div class="view_img">
						<c:forEach items="${viewPanel.articleList}" begin="0" end="2" var="article">
							<ul>
								<li class="img"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="150" height="90" src="<spring:url value="${article.titleImage}" />"></a></li>
								<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
							</ul>
						</c:forEach>
					</div>
					<div class="clear"></div>
					<div class="text">
						<ul id="ie_title">
							<c:forEach items="${viewPanel.articleList}" begin="3" end="8" var="article" varStatus="status">
								<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
							</c:forEach>
						</ul>
						<ul class="text_right" id="ie_title">
							<c:forEach items="${viewPanel.articleList}" begin="9" end="14" var="article" varStatus="status">
								<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="classy">
					<ul>
						<c:forEach items="${childrenTopic}" var="topic">
							<li><a href="<spring:url value="/portal/topic/listArticle/${topic.id}" />">${topic.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="right">
		<div class="tab_nav" id="dvNav_Btn">
			<ul>
				<li><a class="current" id="Btn1">建筑</a></li>
				<li> <a id="Btn2">景观</a></li>
				<li><a id="Btn3">室内</a></li>
				<li class="more"><a href="<spring:url value="/portal/view/index" />" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="con_nav">
			<div class="sub_nav3" id="dv_Btn1" style="">
				<ul class="con_nav_head">
					<li><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000330.html" target="_blank"><img src="/img/roomdesign_02.png"></a></li>
					<li class="text"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000330.html" target="_blank">以色列特拉维夫复合式艺术博物馆，以其在当代和现代艺术上的领导地位而闻名，现如今要为其设计并修建一座新的独立式建筑。赫塔罕保尔酋长大楼内有众</a></li>
				</ul>
				<ul class="list">
					<li class="clear"></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000342.html" target="_blank">越南河内博物馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000341.html" target="_blank">2011大运会体育中心</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000337.html" target="_blank">台中图书馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000332.html" target="_blank">深圳宝安体育场</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000330.html" target="_blank">特拉维夫复合式艺术博物馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000327.html" target="_blank">青岛大剧院</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000318.html" target="_blank">开普敦体育馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000316.html" target="_blank">太原艺术博物馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000311.html" target="_blank">哈帕音乐会议中心</a></li>
					<!--               <li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000310.html" target="_blank">文化场</a></li>-->
				</ul>
			</div>
			<div class="sub_nav3" id="dv_Btn2">
				<ul class="con_nav_head">
					<li><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201302/20130200000396.html" target="_blank"><img src="/img/roomdesign_03.png"></a></li>
					<li class="text"><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201302/20130200000396.html" target="_blank">澳门新濠天地位于金光大道区域北侧，毗邻澳门科技大学，集娱乐设施、夜店、酒店、餐厅、商场和俱乐部于一身。</a></li>
				</ul>
				<ul class="list">
					<li class="clear"></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/waterstate/201302/20130200000307.html" target="_blank">休闲、娱乐——不羁的景观尝试</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/housecourtyard/201302/20130200000325.html" target="_blank">文化、水文——景观赏析</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/plandesign/201302/20130200000303.html" target="_blank">畅谈、倾诉——语示的景观设计</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201302/20130200000396.html" target="_blank">澳门新濠天地</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201302/20130200000309.html" target="_blank">俯瞰、大气—— 大型商业景观的典范</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/businesswork/201301/20130100000300.html" target="_blank">花园、画园——校园设计</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/touristspot/201302/20130200000306.html" target="_blank">旧貌新颜——景观设计改造</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/landscapedesign/traffic/201302/20130200000324.html" target="_blank">市政、惠民——景观绿荫</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000342.html" target="_blank">越南河内博物馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/buildingdesign/citybuilding/201302/20130200000311.html" target="_blank">哈帕音乐会议中心</a></li>
				</ul>
			</div>
			<div class="sub_nav3" id="dv_Btn3">
				<ul class="con_nav_head">
					<li><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000630.html" target="_blank"><img src="/img/roomdesign_01.png"></a></li>
					<li class="text"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000630.html" target="_blank">这栋上、下仅两层楼高的独立建筑，清水模的质朴、陶缸水景的写意、加上玻璃帷幕的通透感，在鲜明的建筑语言裡，同时注入了</a></li>
				</ul>
				<ul class="list">
					<li class="clear"></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000624.html" target="_blank">茶韵——静茶-香格里拉店</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000620.html" target="_blank">茶境——静茶访-西湖店</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000620.html" target="_blank">茶境——静茶访-西湖店</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000612.html" target="_blank">时光印记——二布院</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000604.html" target="_blank">“炭”素回归——原味之美</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000601.html" target="_blank">浓情牛肉面——牛公馆 (北京佳程广场店)</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000591.html" target="_blank">麻辣之舞</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000362.html" target="_blank">丽星温泉度假酒店</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000390.html" target="_blank">东方帝国多功能会馆</a></li>
					<li id="ie_list"><a href="http://www.93idm.com/aarticle/roomdesign/businessspace/201302/20130200000365.html" target="_blank">意兰庭保健会所</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="clear"></div><!--清除浮动专用-->