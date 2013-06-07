<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%><!doctype html>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/top.css"/>" type="text/css" />

<div class="bottom_headbg" style="background: url(<spring:url value="/static/img/topbg.png" />)">
	<div class="bottom_header" style="background: url(<spring:url value="/static/img/logobg.png" />)">
		<p class="bottom_header_top">
			<span><img src="<spring:url value="/static/img/iconee.gif" />" /></span><span><a href="/member/login.jsp">登陆</a></span><span><a href="/member/register.jsp">注册</a></span></p>
		<h1 class="bottom_logo"  style="background: url(<spring:url value="/static/img/logo.png" />)"><a href="#" name="top"><span class="bottom_fn_hide"></span></a></h1>
		<div class="bottom_nav"  style="background: url(<spring:url value="/static/img/nav.png" />)">
			<ul class="bottom_fn_clear" id="dvMainNavb">
				<li><a href="/index.shtml" onclick="" id="nav_index">首页</a></li>
				<li><a href="/column/infocenter.shtml" onclick="" id="nav_infocenter">资讯中心</a></li>
				<li><a href="/column/buildingdesign.shtml" onclick="" id="nav_buildingdesign">建筑设计</a></li>
				<li><a href="/column/landscapedesign.shtml" onclick="" id="nav_landscapedesign">景观设计</a></li>
				<li><a href="/column/roomdesign.shtml" onclick="" id="nav_roomdesign">室内设计</a></li>
				<li><a href="/column/effectmodel.shtml" onclick="" id="nav_effectmodel">效果图模型</a></li>
				<li><a href="/column/developer.shtml" onclick="" id="nav_developers">开发商</a></li>
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
