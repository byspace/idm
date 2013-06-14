<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -左上图片滚动 --%>
<div class="box01_left">
	<div class="box01_left_top">
		<div class="box01_banner">
			<div class="small_banner">
				<ul >
					<c:forEach items="${TP0201List}" begin="0" end="3" var="article">
						<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="327" height="251" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="box01_left_bottom">
		<ul class="left_list">
			<c:forEach items="${TP0201List}" begin="4" end="10" var="article">
				<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>