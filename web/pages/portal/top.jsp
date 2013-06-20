<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%><!doctype html>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/top.css"/>" type="text/css" />

<script type="text/javascript">
	$(function(){

		var topicName = $("#currentTopic").val();
		if (topicName == undefined || topicName == "") {
			topicName = $("#firstLevelTopicName").val();
		}

		$("#dvMainNavb li a").each(function(){
			if ($(this).html() == topicName) {
				$(this).attr("style", "background:url(" + getUrl("/static/img/index_03.gif") + ") repeat-x 0 2px; margin:0 1px 0 1px;");
			}
		});


		$("li.nav_left_top").attr("style", "background:url('" + getUrl("/static/img/icon01.png") + "') no-repeat top left;");
		$("li.nav_left_bottom").attr("style", "background:url('" + getUrl("/static/img/icon02.png") + "') no-repeat;");
		$("li.nav_right").attr("style", "background:url('" + getUrl("/static/img/btn_bg01.png") + "') no-repeat;");
		$("li.title_left").attr("style", "background:url('" + getUrl("/static/img/icon01.png") + "') no-repeat top left;;");
		$("li.title_right").attr("style", "background:url('" + getUrl("/static/img/btn_bg01.png") + "') no-repeat;");
	});
</script>

<div class="bottom_headbg" style="background: url(<spring:url value="/static/img/topbg.png" />)">
	<div class="bottom_header" style="background: url(<spring:url value="/static/img/logobg.png" />)">
		<p class="bottom_header_top">
			<span><img src="<spring:url value="/static/img/iconee.gif" />" /></span><span><a href="/member/login.jsp">登陆</a></span><span><a href="/member/register.jsp">注册</a></span></p>
		<h1 class="bottom_logo"  style="background: url(<spring:url value="/static/img/logo.png" />)"><a href="#" name="top"><span class="bottom_fn_hide"></span></a></h1>
		<div class="bottom_nav"  style="background: url(<spring:url value="/static/img/nav.png" />)">
			<ul class="bottom_fn_clear" id="dvMainNavb">
				<li><a href="<spring:url value="/portal/index"/>" onclick="" id="nav_index">首页</a></li>
				<li><a href="<spring:url value="/portal/newscenter/index"/>" onclick="" id="nav_infocenter">资讯中心</a></li>
				<li><a href="<spring:url value="/portal/buildingdesign/index"/>" onclick="" id="nav_buildingdesign">建筑设计</a></li>
				<li><a href="<spring:url value="/portal/viewdesign/index"/>" onclick="" id="nav_landscapedesign">景观设计</a></li>
				<li><a href="<spring:url value="/portal/roomdesign/index"/>" onclick="" id="nav_roomdesign">室内设计</a></li>
				<li><a href="<spring:url value="/portal/effectmodel/index"/>" onclick="" id="nav_effectmodel">效果图模型</a></li>
				<li><a href="<spring:url value="/portal/developer/index"/>" onclick="" id="nav_developers">开发商</a></li>
				<li><a href="/membercenter/jobindex.shtml" onclick="" id="nav_job" target="_blank">人才招聘</a></li>
				<li><a href="#" onclick="" id="nav_forum">论坛</a></li>
			</ul>
			<div class="bottom_seach">
				<input type="text">
				<a href="#" class="bottom_seach_btn"  style="background: url(<spring:url value="/static/img/ss.png" />)"><span class="bottom_fn_hide"></span></a>
			</div>
		</div>
	</div>
</div>

<c:if test="${secondLevelTopicList != null}">
	<div class="bottom_sec_nav" id="sub_nav_landscapedesign" style="">
		<c:forEach items="${secondLevelTopicList}" var="topic">
			<a href="<spring:url value="/portal/topic/listArticle/${topic.id}" />" onclick="">${topic.name}</a>
		</c:forEach>
	</div>
</c:if>

<input type="hidden" id="firstLevelTopicId" value="${firstLevelTopic.id}" />
<input type="hidden" id="firstLevelTopicName" value="${firstLevelTopic.name}" />
