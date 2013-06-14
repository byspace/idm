<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -城市建筑 --%>

<div class="box03_left">
	<div class="box03_right_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0204"/>" target="_blank"><span>城市建筑</span></a></li>
			<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>City</span></li>
		</ul>
		</li>
		<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0204"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box03_right_mid">
		<ul class="box03_right_mid_left">
			<c:forEach items="${TP0204List}" var="article" begin="0" end="0">
				<li id="image"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="174" height="117" src="<spring:url value="${article.titleImage}"/>" /></a></li>
				<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</c:forEach>
		</ul>
		<ul class="left_list" id="box03_right_mid_mid">
			<c:forEach items="${TP0204List}" var="article" begin="1" end="8">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>
		</ul>
		<ul class="left_list" >
			<c:forEach items="${TP0204List}" var="article" begin="9" end="16">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="clear"></div>
	<div class="box03_right_bottom">
		<div class="work">
			<c:forEach items="${TP0204List}" var="article" begin="17" end="21">
				<ul>
					<li id="image"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="115" height="90" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
				</ul>
			</c:forEach>
		</div>
	</div>
	<div class="clear"></div>
</div>