<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 品牌巡礼--%>

<div class="main_box05">
	<div class="main_box05_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0106"/>" target="_blank"><span>品牌巡礼</span></a></li>
					<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Brand</span></li>
				</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0106"/>" target="_blank">更多.</a></li>
			<div class="clear"></div>
		</ul>
	</div>
	<div class="main_box05_body">
		<div class="main_box05_body_left">
			<div class="main_box05_body_text">
				<ul class="con_news">
					<c:forEach items="${TP0106List}" var="article" begin="0" end="0">
						<li class="heading"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
						<li id="text"><a >${article.summary}</a></li>
					</c:forEach>

					<c:forEach items="${TP0106List}" var="article" begin="1" end="7">
						<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
					</c:forEach>

				</ul>
				<ul class="con_news" id="con_news_right">
					<c:forEach items="${TP0106List}" var="article" begin="8" end="17">
						<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
					</c:forEach>
				</ul>
				<div class="clear"></div>

			</div>
			<div class="main_box05_body_banner"></div>
		</div>
		<div class="main_box05_body_right">
			<div class="box05_banner">
				<ul>
					<c:forEach items="${TP0106List}" var="article" begin="18" end="22">
						<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="250" height="190" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="main_box05_bottom">
		<ul class="co_logo">
			<c:forEach items="${TP0106List}" var="article" begin="23" end="36">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="129" height="33" src="<spring:url value="${article.titleImage}"/>"/></a></li>
			</c:forEach>
		</ul>
	</div>
</div>