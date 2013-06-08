<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/portal/article/view.js" />"></script>
<link rel="stylesheet" href="<spring:url value="/static/css/portal/sub.css"/>" type="text/css" />

<body>

<%@ include file="../top.jsp" %>

<div class="details_waup">
	<div class="details_current">
		当前位置<b>:</b>

		<c:forEach items="${topicList}" var="topic">
			<a class="listhomepage" href="<spring:url value="/portal/topic/listArticle/${topic.id}" />">${topic.name}</a>&nbsp;&gt;&nbsp;
		</c:forEach>
		正文

	</div>
	<div class="details_list">
		<table class="aarticle" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td class="title">${article.subject}</td>
				</tr>
				<tr>
					<td class="lline"></td>
				</tr>
				<tr>
					<td class="time">
						<fmt:formatDate value="${article.publishDate}" pattern="yyyy-MM-dd HH:mm"/>
						&nbsp;&nbsp;文章来源：<font class="time_source">${article.source}</font>
					</td>
				</tr>
				<tr>
					<td class="time">
						文章类型：<font class="time_leixing">${article.articleType.name}</font>&nbsp;&nbsp;内容分类：<font class="time_fenlei">${article.category.name}</font>
					</td>
				</tr>
				<tr>
					<td class="content" id="zoom"><br>
						${article.content}
						<br>
					</td>
				</tr>
			</tbody>
		</table>


	</div>

</div>

<div class="bottom_kong"></div>

<%@ include file="../bottom.jsp" %>
</body>
</html>