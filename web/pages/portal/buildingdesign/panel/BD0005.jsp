<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -最新走势 --%>

<div class="box02_right">
	<div class="box02_right_top">
		<ul class="title">
			<li class="title_left" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><span>最新走势</span></li>
			<li class="title_right" style="background: url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0201" />" target="_blank">更多.</a></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="box02_right_bottom">
		<div class="pic">
			<ul>
				<c:forEach items="${TP0201List}" begin="0" end="0" var="article">
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="117" height="74" src="<spring:url value="${article.titleImage}"/>" /></a></li>
				</c:forEach>

			</ul>
		</div>
		<div class="text">
			<ul class="left_list">
				<c:forEach items="${TP0201List}" begin="1" end="9" var="article">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>