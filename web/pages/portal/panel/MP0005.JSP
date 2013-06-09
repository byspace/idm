<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="archtect">
	<div class="left">
		<ul>
			<li>
				<ul class="head">
					<li class="heading"><a href="<spring:url value="/portal/archtect/index" />" target="_blank"><strong><span style="color:#399b9a">建筑</span>设计</strong></a></li>
					<li class="more"><a href="<spring:url value="/portal/archtect/index" />" target="_blank">+ 更多</a></li>
				</ul>
			</li>
			<li class="clear"></li>
			<li>
				<div class="work">

					<c:forEach items="${archtectPanel.articleList}" var="article">

					<ul>
						<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="115px" height="90px" src="<spring:url value="${article.titleImage}" />"></a></li>
						<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</ul>

					</c:forEach>

					<div class="clear"></div>
				</div>
				<div class="classy">

					<ul>
						<c:forEach items="${childrenTopic}" var="topic">
							<li><a href="<spring:url value="/portal/topic/listArticle/${topic.id}" />">${topic.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="right">
		<ul>
			<li><a href="<spring:url value="/portal/article/view/${archtectPanel.article.id}" />" target="_blank"><img width="216" height="270" src="<spring:url value="${archtectPanel.article.titleImage}" />"></a></li>
			<li class="title"><a href="<spring:url value="/portal/article/view/${archtectPanel.article.id}" />" target="_blank"><strong>${archtectPanel.article.subject}</strong></a></li>
			<li class="text">${archtectPanel.article.summary}</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
<div class="clear"></div><!--清除浮动专用-->