<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 业主之家--%>

<div class="main_box07_right">
	<div class="head">
		<ul>
			<li class="left" style="background:url('<spring:url value="/static/img/btn_bg.png"/>') no-repeat center;"><a href="<spring:url value="/portal/topic/list/TP0109"/>" target="_blank"><span>业主之家</span></a></li>
			<li class="right"><a href="<spring:url value="/portal/topic/list/TP0109"/>">+更多</li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="main_box07_right_bottom">
		<ul class="main_box07_con_news">
			<c:forEach items="${TP0109List}" var="article" begin="0" end="12">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>