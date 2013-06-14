<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 活动公告--%>

<div class="main_box01_right">
	<div class="main_box01_right_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0102"/>" target="_blank"><span>活动公告</span></a></li>
					<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Activity Notice</span></li>
				</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="activity"><a href="<spring:url value="/portal/topic/list/TP0102"/>">更多.</a></li>
		</ul>
	</div>
	<div class="main_box01_right_bottom">
		<ul class="viedo">

			<c:forEach items="${TP0102List}" var="article" begin="0" end="1">
				<li>
					<a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="110" height="80" src="<spring:url value="${article.titleImage}"/>" /> </a>
					<a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank" style="margin:3px 0 0 20px;">${article.subject}</a>
				</li>
			</c:forEach>
		</ul>
		<div class="clear"></div>
		<ul class="con_news" id="box01_right_bottom_text">
			<c:forEach items="${TP0102List}" var="article" begin="2" end="10" varStatus="status">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
					<c:if test="${status.first}"><strong></c:if>
					<span id="title">${article.subject}</span>
					<c:if test="${status.first}"></strong></c:if>
				</a></li>
			</c:forEach>
		</ul>
	</div>
</div>