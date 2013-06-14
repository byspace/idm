<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 设计论文--%>

<div class="main_box06_left">
	<div class="main_box06_left_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><span>设计论文</span></li>
			<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Design Thesis</span></li>
		</ul>
		</li>
		<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0311"/>" target="_blank">更多.</a></li>
		<div class="clear"></div>
		</ul>
	</div>
	<div class="main_box06_left_body">
		<div class="body_left">
			<div class="body_left_top">
				<div class="box06_banner">
					<ul>
						<c:forEach items="${designThesisList}" var="article" begin="0" end="4">
							<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img src="<spring:url value="${article.titleImage}"/>" /></a></li>
						</c:forEach>
					</ul>
				</div>
				<c:forEach items="${designThesisList}" var="article" begin="5" end="5">
					<div id="text"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></div>
				</c:forEach>

			</div>
			<div class="body_left_bottom">
				<ul class="left_list">
					<c:forEach items="${designThesisList}" var="article" begin="6" end="7">
						<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
						<li class="text_hide" id="detail"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.summary}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="body_right">
			<ul class="con_news">

				<c:forEach items="${designThesisList}" var="article" begin="8" end="8">
					<li class="heading"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
					<li id="text">${article.summary}</li>
				</c:forEach>

				<li>

					<c:forEach items="${designThesisList}" var="article" begin="9" end="20">
						<ul class="list" >
							<li class="key" id="ie6_key"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
						</ul>
						<div class="clear"></div>
					</c:forEach>

				</li>

			</ul>
		</div>
	</div>
</div>
