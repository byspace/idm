<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 名作品评--%>

<div class="main_box08_left">
	<div class="main_box08_left_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0110"/>" target="_blank"><span>名作品评</span></a></li>
			<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Masterpieces</span></li>
		</ul>
		</li>
		<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0110"/>" target="_blank">更多.</a></li>
		<div class="clear"></div>
		</ul>
	</div>
	<div class="main_box08_left_mid">

		<c:forEach items="${TP0110List}" var="article" begin="0" end="0">
			<ul class="left_list_top">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="105" height="131" src="<spring:url value="${article.titleImage}"/>"  /></a></li>
				<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><span><strong>${article.subject}</strong></span><br />
					${article.summary}</a>
				</li>
				<div class="clear"></div>
			</ul>
		</c:forEach>


	</div>
	<div class="main_box08_left_bottom">
		<ul class="main_box08_con_news">

			<c:forEach items="${TP0110List}" var="article" begin="1" end="7">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</c:forEach>

		</ul>
		<ul class="main_box08_con_news" id="con_news_right">
			<c:forEach items="${TP0110List}" var="article" begin="8" end="14">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</c:forEach>
		</ul>
		<div class="clear"></div>
	</div>
</div>