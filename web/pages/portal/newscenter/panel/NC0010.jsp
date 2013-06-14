<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 设计专题--%>

<div class="main_box07_left">
	<div class="box07_left_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0108"/>" target="_blank"><span>设计专题</span></a></li>
					<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Design</span></li>
				</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0108"/>" target="_blank">更多.</a></li>
		<div class="clear"></div>
		</ul>
	</div>
	<div class="box07_left_bottom">
		<div class="box07_left_bottom_left">
			<ul class="left_list">

				<c:forEach items="${TP0108List}" var="article" begin="0" end="0">
					<li class="left_list_top"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="290" height="100" src="<spring:url value="${article.titleImage}"/>" /></a></li>
				</c:forEach>

				<c:forEach items="${TP0108List}" var="article" begin="1" end="8">
					<li id="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>

			</ul>
		</div>
		<div class="box07_left_bottom_mid"><img src="<spring:url value="/static/img/shadow01.png"/>" /></div>
		<div class="box07_left_bottom_right">
			<ul class="left_list">

				<c:forEach items="${TP0108List}" var="article" begin="9" end="9">
					<li class="left_list_top"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="290" height="100" src="<spring:url value="${article.titleImage}"/>" /></a></li>
				</c:forEach>

				<c:forEach items="${TP0108List}" var="article" begin="10" end="17">
					<li id="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>

			</ul>
		</div>
	</div>
</div>