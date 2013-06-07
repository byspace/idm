<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/portal/topic/listArticle.js" />"></script>
<link rel="stylesheet" href="<spring:url value="/static/css/portal/sub.css"/>" type="text/css" />

<body>

<%@ include file="../top.jsp" %>

<div class="details_waup">
	<div class="details_current">
		<h4 class="details_title">
			当前位置<b>:</b>

			<c:forEach items="${topicList}" var="topic" varStatus="status">
				<a class="listhomepage" href="<spring:url value="/portal/topic/listArticle/${topic.id}" />">${topic.name}</a>
				<c:if test="!${status.last}">
					&nbsp;&gt;&nbsp;
				</c:if>
			</c:forEach>
		</h4>
	</div>

	<div class="news_list">

		<c:forEach items="${articleList}" var="article">
			<div class="news_dl">
				<p class="news_tu">
					<a href="<spring:url value="/portal/article/view/${article.id}" />"><img src="<spring:url value="${article.titleImage}" />" width="100" height="80"></a>
				</p>
				<dl>
					<dt><span class="date">${article.publishDate}</span><a href="<spring:url value="/portal/article/view/${article.id}" />">${article.subject}</a>
					</dt>
					<dd><a href="<spring:url value="/portal/article/view/${article.id}" />">content</a></dd>
				</dl>
			</div>
		</c:forEach>

		<c:if test="${paginator.pageNum > 1}">
			&nbsp;﻿
			<a href="<spring:url value="/portal/topic/listArticle/${topic.id}/${paginator.pageNum - 1}" />" class="pagelink">上一页</a>﻿
		</c:if>

		<c:if test="${paginator.pageNum < paginator.totalPage}">
			&nbsp;﻿
			<a href="<spring:url value="/portal/topic/listArticle/${topic.id}/${paginator.pageNum + 1}" />" class="pagelink">下一页</a>﻿
		</c:if>

	</div>

</div>


<div class="bottom_kong"></div>
<%@ include file="../bottom.jsp" %>
</body>
</html>