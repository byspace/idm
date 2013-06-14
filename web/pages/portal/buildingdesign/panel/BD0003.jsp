<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -精彩视频 --%>

<div class="box01_right">
	<div class="recommend">

		<ul>
			<c:forEach items="${TP0202List}" var="article" begin="0" end="0">
				<li>
					<a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="210" height="171" src="<spring:url value="${article.titleImage}"/>" /></a>
				</li>
				<li>
					<a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a>
				</li>
			</c:forEach>
		</ul>
	</div>

	<c:forEach items="${TP0202List}" var="article" begin="1" end="3">
		<div class="small_video">
			<ul>
				<li id="image"><img  width="80" height="60" src="<spring:url value="${article.titleImage}"/>" /></li>
				<li style="margin-top:3px;"><img src="<spring:url value="/static/img/vidio_btn.png"/>" /></li>
				<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</c:forEach>

	<div class="more"><a href="<spring:url value="/portal/topic/list/TP0202"/>" target="_blank">更多精彩视频>></a></div>
</div>
