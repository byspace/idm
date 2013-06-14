<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 - 工业建筑 --%>

<div class="box07_left">
	<div class="box07_left_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0210"/>" target="_blank"><span>工业建筑</span></a></li>
					<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>Industrial</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0210"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box07_left_bottom">
		<div class="box07_left_bottom_left">

			<c:forEach items="${TP0210List}" var="article" begin="0" end="0">
				<div class="box_top">
					<ul >
						<li id="list_top" class="box06_01"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="212" height="143" src="<spring:url value="${article.titleImage}"/>" /></a></li>
						<li  id="box06_news_live"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong><br />${article.summary}</a></li>
					</ul>
					<div class="clear"></div>
				</div>
			</c:forEach>


			<div class="text">
				<ul class="left_list" >
					<c:forEach items="${TP0210List}" var="article" begin="1" end="7">
						<li id="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="box07_left_bottom_right">
			<div class="text">
				<ul class="left_list" id="no_margin">
					<c:forEach items="${TP0210List}" var="article" begin="1" end="7">
						<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>