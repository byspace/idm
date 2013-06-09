<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="banner">
	<ul>
		<li class="small_banner">
			<ul>
				<c:forEach items="${bannerPanel.articleList}" var="article">
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img src="<spring:url value="${article.titleImage}" />" /></a></li>
				</c:forEach>
			</ul>
		</li>

		<c:forEach items="${bannerPanel.articleList}" var="article" varStatus="status">
			<c:if test="${status.first}">
				<li class="title"><strong><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></strong></li>
				<li class="text">${article.summary}</li>
			</c:if>
		</c:forEach>
	</ul>
</div>