<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 景观设计 - 景观资讯 --%>

<div class="box01_mid">
	<div class="box01_mid_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top"><a href="<spring:url value="/portal/topic/list/TP0301"/>" target="_blank"><span>景观资讯</span></a></li>
					<li class="nav_left_bottom"><span>Landscage News</span></li>
				</ul>
			</li>
			<li class="nav_right"><a href="<spring:url value="/portal/topic/list/TP0301"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box01_mid_bottom">
		<div class="box_top">

			<c:forEach items="${TP0301List}" var="article" begin="0" end="0">
				<ul >
					<li id="list_top"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="134" height="82" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					<li  id="news_live"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong><br />${article.summary}</a></li>
				</ul>
				<div class="clear"></div>
			</c:forEach>


		</div>
		<div class="text">
			<ul class="left_list">
				<c:forEach items="${TP0301List}" var="article" begin="1" end="8">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>