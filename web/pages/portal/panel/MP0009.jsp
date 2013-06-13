<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- 主页 - 效果图模型--%>

<div class="photo_show">
	<div>
		<ul class="head">
			<li class="heading"><a href="<spring:url value="/portal/effect/index" />" target="_blank"><strong><span style="color:#399b9a">效果图</span>模型</strong></a></li>
			<li class="more"><a href="<spring:url value="/portal/effect/index" />" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="flexslider" style="width: 294px; float: left">
		<ul class="slides">
			<c:forEach items="${effectArticles}" begin="0" end="3" var="article">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="294" height="264" src="<spring:url value="${article.titleImage}"/>"></a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="work">

		<c:forEach items="${effectArticles}" begin="4" end="11" var="article">
			<ul>
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="115" height="90" src="<spring:url value="${article.titleImage}"/>"></a></li>
				<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</ul>
		</c:forEach>



	</div>
	<div class="clear"></div>
</div>