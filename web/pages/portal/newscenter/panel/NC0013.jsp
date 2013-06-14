<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 热门时事--%>

<div class="main_box08_right">
	<div class="main_box04_right">
		<div class="main_box04_right_top">
			<div class="head">
				<ul>
					<li class="left" style="background:url('<spring:url value="/static/img/btn_bg.png"/>') no-repeat center;"><span>热门时事</span></li>
					<li class="right"><a href="<spring:url value="/portal/topic/list/TP0107"/>">+更多</li>
				</ul>
			</div>
		</div>
		<div class="main_box08_right_bottom">
			<div class="top">
				<c:forEach items="${TP0107List}" var="article" begin="0" end="0">
					<ul >
						<li id="list_top"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="90" height="111" src="<spring:url value="${article.titleImage}"/>" /></a></li>
						<li  id="news_live"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
					</ul>
				</c:forEach>

			</div>
			<ul class="left_list">
				<c:forEach items="${TP0107List}" var="article" begin="1" end="9">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>