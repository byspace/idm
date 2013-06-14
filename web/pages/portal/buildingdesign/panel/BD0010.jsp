<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 - 城市规划 --%>

<div class="box05_left">
	<div class="box05_left_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0207"/>" target="_blank"><span>城市规划</span></a></li>
			<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>Planning</span></li>
		</ul>
		</li>
		<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0207"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box05_left_mid">
		<div class="work">

			<c:forEach items="${TP0207List}" var="article" begin="0" end="4">
				<ul>
					<li id="work_img"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="116" height="94" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
				</ul>
			</c:forEach>

			<div class="clear"></div>
		</div>
	</div>
	<div class="box05_left_bottom">
		<ul class="left_list" id="box03_right_mid_mid">
			<c:forEach items="${TP0207List}" var="article" begin="5" end="10">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>
		</ul>
		<ul class="left_list" >
			<c:forEach items="${TP0207List}" var="article" begin="11" end="16">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>