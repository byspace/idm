<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -商业建筑 --%>

<div class="box02_left">
	<div class="box02_left_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0203"/>" target="_blank"><span>商业建筑</span></a></li>
					<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>Business</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0203"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box02_left_bottom">
		<div class="box02_left_bottom_left">
			<div class="top">

				<c:forEach items="${TP0203List}" begin="0" end="1" var="article">
					<ul class="con_news">
						<li class="heading"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
						<li id="text">${article.summary}</li>
					</ul>
				</c:forEach>

			</div>
			<div class="work">

				<c:forEach items="${TP0203List}" begin="2" end="4" var="article">
					<ul>
						<li id="image"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="115" height="90" src="<spring:url value="${article.titleImage}"/>" /></a></li>
						<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
					</ul>
				</c:forEach>

			</div>
		</div>
		<div class="box02_left_bottom_right">
			<ul class="left_list">
				<c:forEach items="${TP0203List}" begin="5" end="17" var="article">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>