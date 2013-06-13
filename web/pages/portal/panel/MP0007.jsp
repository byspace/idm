<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--主页 - 室内设计--%>

<div class="archtect">
	<div class="left">
		<ul>
			<li>
				<ul class="head">
					<li class="heading"><a href="<spring:url value="/portal/room/index" />" target="_blank"><strong><span style="color:#399b9a">室内</span>设计</strong></a></li>
					<li class="more"><a href="<spring:url value="/portal/room/index" />" target="_blank">+ 更多</a></li>
				</ul>
			</li>
			<li class="clear"></li>
			<li>
				<div class="work">

					<c:forEach items="${roomArticles}" var="article">
						<ul>
							<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="115" height="90" src="<spring:url value="${article.titleImage}" />"></a></li>
							<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
						</ul>
					</c:forEach>
					<div class="clear"></div>
				</div>
				<div class="classy">
					<ul>
						<c:forEach items="${roomChildrenTopic}" var="topic">
							<li><a href="<spring:url value="/portal/topic/listArticle/${topic.id}" />">${topic.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="house_right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">开发商介绍</a></li>
				<li class="more"><a href="<spring:url value="/portal/developer/index" />">+ 更多</a></li>
			</ul>
		</div>
		<div class="con_nav">
			<c:forEach items="${developArticles}" begin="0" end="0" var="article">
				<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="88" height="65" src="<spring:url value="${article.titleImage}" />"></a></li>
				<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
			</c:forEach>
			<div class="clear"></div>

			<ul class="list">
				<c:forEach items="${developArticles}" begin="1" var="article">
					<li id="ie_list"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<div class="clear"></div>