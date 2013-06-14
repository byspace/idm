<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 - 节能建筑 --%>

<div class="box05_right">

	<div class="box05_right_top">
		<ul class="title">
			<li class="title_left" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0208"/>" target="_blank"><span>节能建筑</span></a></li>
			<li class="title_right" style="background: url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0208"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>

	<c:forEach items="${TP0208List}" var="article" begin="0" end="1">
		<div class="box_top">
			<ul >
				<li id="list_top" class="box05_01"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="95" height="76" src="<spring:url value="${article.titleImage}"/>" /></a></li>
				<li  id="news_live"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</c:forEach>

	<div class="text">
		<ul class="left_list" >
			<c:forEach items="${TP0208List}" var="article" begin="2" end="7">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>