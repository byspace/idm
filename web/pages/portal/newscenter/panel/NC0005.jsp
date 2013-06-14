<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 培训资讯--%>

<div class="main_box04_left">
	<div class="main_box04_left_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0104"/>" target="_blank"><span>培训资讯</span></a></li>
					<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Training</span></li>
				</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0104"/>">更多.</a></li>
			<div class="clear"></div>
		</ul>
		<div class="main_box04_left_body">
			<ul class="viedo">
				<c:forEach items="${TP0104List}" var="article" begin="0" end="2">
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="191" height="100" src="<spring:url value="${article.titleImage}"/>" /></a><a style="width: 191px; overflow: hidden; display: block; " href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
				</c:forEach>
			</ul>
			<ul class="con_news">
				<c:forEach items="${TP0104List}" var="article" begin="3" end="3">
					<li class="heading"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
					<li id="text">${article.summary}</li>
				</c:forEach>

				<li >

					<c:forEach items="${TP0104List}" var="article" begin="4" end="16">
						<ul class="list" >
							<li class="key" id="ie6_key"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">[${article.category.name}]${article.subject}</a></li>
							<li class="date"><fmt:formatDate value="${article.publishDate}" pattern="yyyy-MM-dd"/></li>
						</ul>
						<div class="clear"></div>
					</c:forEach>

				</li>
			</ul>
		</div>
	</div>
</div>