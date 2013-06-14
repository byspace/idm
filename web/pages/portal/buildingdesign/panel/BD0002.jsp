<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -建筑资讯 --%>
<div class="box01_mid">
	<div class="main_mid_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0201"/>" target="_blank"><span>建筑资讯</span></a></li>
					<li class="nav_left_bottom"><span>Building news</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0201"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box01_mid_bottom">
		<ul class="left_list">
			<c:forEach items="${TP0201List}" var="article" begin="0" end="3" varStatus="status">
				<li class="title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
					<c:if test="${status.first}"><strong></c:if>
						${article.subject}
					<c:if test="${status.first}"></strong></c:if>
				</a></li>
			</c:forEach>

		</ul>
		<ul class="left_list">
			<c:forEach items="${TP0201List}" var="article" begin="4" end="7" varStatus="status">
				<li class="title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
					<c:if test="${status.first}"><strong></c:if>
						${article.subject}
					<c:if test="${status.first}"></strong></c:if>
				</a></li>
			</c:forEach>
		</ul>
		<ul class="left_list">
			<c:forEach items="${TP0201List}" var="article" begin="8" end="11" varStatus="status">
				<li class="title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
					<c:if test="${status.first}"><strong></c:if>
						${article.subject}
					<c:if test="${status.first}"></strong></c:if>
				</a></li>
			</c:forEach>
		</ul>
		<ul class="left_list">
			<c:forEach items="${TP0201List}" var="article" begin="12" end="15" varStatus="status">
				<li class="title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
					<c:if test="${status.first}"><strong></c:if>
						${article.subject}
					<c:if test="${status.first}"></strong></c:if>
				</a></li>
			</c:forEach>
		</ul>
	</div>
</div>
