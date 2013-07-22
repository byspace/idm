<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../../common/portal_head.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/style.css"/>" type="text/css" />

<body style="margin: 0px;">

<%@ include file="../../nav.jsp" %>

<script type="text/javascript">
	$(function(){
		var current = $("#nav_current_page").val();
		$("li.home").removeClass("home");
		$("#nav_" + current).addClass("home");
	});
</script>

<div class="top">
	<h4 class="logo"><a href="<spring:url value="/portal/index"/>" target="_blank">国际设计传媒网</a><span>www.93idm.com</span></h4>
	<div class="nav">
		<ul>
			<li class="home" id="nav_home"><a href="<spring:url value="/portal/usercenter/personal/index/${member.id}"/>">首页</a></li>
			<li id="nav_information"><a href="<spring:url value="/portal/usercenter/personal/information/${member.id}"/>">关于${member.name}</a></li>
			<li id="nav_design"><a href="<spring:url value="/portal/usercenter/personal/design/${member.id}"/>">设计案例</a></li>
			<li id="nav_post"><a href="<spring:url value="/portal/usercenter/personal/post/${member.id}"/>">设计博文</a></li>
			<li id="nav_comment"><a href="<spring:url value="/portal/usercenter/personal/comment/${member.id}"/>">给我留言</a></li>
			<%--<li id="nav_"><a href="project.shtml">委托设计</a></li>--%>
		</ul>
	</div>
</div>