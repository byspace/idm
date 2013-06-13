<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--主页 - 重点推荐企业--%>

<div class="co_recommend">
	<ul>
		<li>
			<ul class="head">
				<li class="heading" style="font-size: 18px;border-bottom: #399b9a solid 3px;height: 25px;width: 140px;"><strong><span style="color:#399b9a">重点</span>推荐企业</strong></li>
			</ul>
		</li>

		<li>
			<ul class="co_logo">
				<c:forEach items="${developPanel.articleList}" var="article">
					<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="130" height="35" src="<spring:url value="${article.titleImage}" />"></a></li>
				</c:forEach>
			</ul>
		</li>
	</ul>
</div>
<div class="clear"></div><!--清除浮动专用-->