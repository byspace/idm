<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--主页 - 景观设计--%>

<div class="view">
	<div class="left">
		<ul>
			<li>
				<ul class="head">
					<li class="heading"><a href="<spring:url value="/portal/view/index" />" target="_blank"><strong><span style="color:#399b9a">景观</span>设计</strong></a></li>
					<li class="more"><a href="<spring:url value="/portal/view/index" />" target="_blank">+ 更多</a></li>
				</ul>
			</li>
			<li class="clear"></li>
			<li>
				<div class="work">
					<div class="view_img">
						<c:forEach items="${viewPanel.articleList}" begin="0" end="2" var="article">
							<ul>
								<li class="img"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="150" height="90" src="<spring:url value="${article.titleImage}" />"></a></li>
								<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
							</ul>
						</c:forEach>
					</div>
					<div class="clear"></div>
					<div class="text">
						<ul id="ie_title">
							<c:forEach items="${viewPanel.articleList}" begin="3" end="8" var="article" varStatus="status">
								<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
							</c:forEach>
						</ul>
						<ul class="text_right" id="ie_title">
							<c:forEach items="${viewPanel.articleList}" begin="9" end="14" var="article" varStatus="status">
								<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="classy">
					<ul>
						<c:forEach items="${viewChildrenTopic}" var="topic">
							<li><a href="<spring:url value="/portal/topic/listArticle/${topic.id}" />">${topic.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="right">
		<div class="tab_nav" id="dvNav_Btn">
			<ul>
				<li><a class="current" id="Btn1">建筑</a></li>
				<li> <a id="Btn2">景观</a></li>
				<li><a id="Btn3">室内</a></li>
				<li class="more"><a href="<spring:url value="/portal/view/index" />" target="_blank">+ 更多</a></li>
			</ul>
		</div>
		<div class="con_nav">
			<div class="sub_nav3" id="dv_Btn1" style="">
				<ul class="con_nav_head">
					<c:forEach items="${archtectTab}" begin="0" end="0" var="article">
						<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="88" height="65" src="<spring:url value="${article.titleImage}" />"></a></li>
						<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</c:forEach>

				</ul>
				<ul class="list">
					<li class="clear"></li>
					<c:forEach items="${archtectTab}" begin="1" var="article">
						<li id="ie_list"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="sub_nav3" id="dv_Btn2">
				<ul class="con_nav_head">
					<c:forEach items="${viewTab}" begin="0" end="0" var="article">
						<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="88" height="65" src="<spring:url value="${article.titleImage}" />"></a></li>
						<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</c:forEach>

				</ul>
				<ul class="list">
					<li class="clear"></li>
					<c:forEach items="${viewTab}" begin="1" var="article">
						<li id="ie_list"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="sub_nav3" id="dv_Btn3">
				<ul class="con_nav_head">
					<c:forEach items="${roomTab}" begin="0" end="0" var="article">
						<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="88" height="65" src="<spring:url value="${article.titleImage}" />"></a></li>
						<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</c:forEach>

				</ul>
				<ul class="list">
					<li class="clear"></li>
					<c:forEach items="${roomTab}" begin="1" var="article">
						<li id="ie_list"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="clear"></div><!--清除浮动专用-->