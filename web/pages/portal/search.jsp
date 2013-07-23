<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/portal_head.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/sub.css"/>" type="text/css" />

<body>

<%@ include file="top.jsp" %>

<div class="details_waup">
	<div class="details_current">
		<h4 class="details_title">
			当前位置<b>:</b>查询结果
		</h4>
	</div>

	<div class="news_list">

		<c:forEach items="${articleList}" var="article">
			<div class="news_dl">
				<p class="news_tu">
					<a href="<spring:url value="/portal/article/view/${article.id}" />"><img src="<spring:url value="${article.titleImage}" />" width="100" height="80"></a>
				</p>
				<dl>
					<dt><span class="date"><fmt:formatDate value="${article.publishDate}" pattern="yyyy-MM-dd HH:mm"/></span><a href="<spring:url value="/portal/article/view/${article.id}" />">${article.subject}</a>
					</dt>
					<dd><a href="<spring:url value="/portal/article/view/${article.id}" />">${article.summary}</a></dd>
				</dl>
			</div>
		</c:forEach>

		<c:if test="${currentPage > 1}">
			&nbsp;﻿
			<a href="<spring:url value="/portal/search/index/${text}/${currentPage - 1}" />" class="pagelink">上一页</a>﻿
		</c:if>


			&nbsp;﻿
			<a href="<spring:url value="/portal/search/index/${text}/${currentPage + 1}" />" class="pagelink">下一页</a>﻿


	</div>

</div>


<div class="bottom_kong"></div>
<%@ include file="bottom.jsp" %>
</body>
</html>