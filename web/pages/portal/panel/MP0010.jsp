<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- 主页 - 地产开发商 --%>

<div class="develope">
	<div class="left">
		<ul class="head">
			<li class="heading"><a href="<spring:url value="/portal/developer/index"/>" target="_blank"><strong><span style="color:#399b9a">地产</span>开发商</strong></a></li>
			<li class="more"><a href="<spring:url value="/portal/developer/index"/>" target="_blank">+ 更多</a></li>
		</ul>
		<ul class="list_left">
			<li class="clear"></li>

			<c:forEach items="${developerArticles}" var="article" begin="0" end="7">
				<li id="ie_list"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</c:forEach>
		</ul>
		<ul class="right_list">

			<c:forEach items="${developerArticles}" var="article" begin="8" end="8">
				<li class="list_right_top">
					<ul>
						<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="100" height="67" src="<spring:url value="${article.titleImage}"/>"></a></li>
						<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><span><strong>${article.subject}</strong></span><br>
							${article.summary} </a>
						</li>
						<div class="clear"></div>
					</ul>
				</li>
			</c:forEach>

			<c:forEach items="${developerArticles}" var="article" begin="9" end="14">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="right">
		<div class="nav">
			<ul>
				<li><a href="#" target="_blank">开发商介绍</a></li>
				<li class="more"><a href="http://www.93idm.com/column/developers.shtml">+ 更多</a></li>
			</ul>
		</div>
		<div class="list">
			<ul class="text">
				<li class="order"><a>1</a></li>
				<li class="name"><a href="http://preview.93idm.com/aarticle/developer/ddesignfront/201302/20130200000751.html" target="_blank">万科公园 TODO</a></li>
				<li class="price">21000</li>
				<li class="address">罗湖</li>
			</ul>

			<div class="clear"></div>
		</div>
	</div>
</div>