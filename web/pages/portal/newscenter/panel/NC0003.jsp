<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 设计前沿--%>

<div class="main_box02">
	<div class="main_box02_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0103"/>" target="_blank"><span>设计前沿</span></a></li>
					<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Design front</span></li>
				</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0103"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="main_box02_con">
		<div class="main_box02_left">
			<ul class="con_news">
				<c:forEach items="${TP0103List}" var="article" begin="0" end="9" varStatus="status">
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
						<c:if test="${status.first}"><strong></c:if>
							${article.subject}
						<c:if test="${status.first}"></strong></c:if>
					</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="main_box02_right">
			<div class="work">

				<c:forEach items="${TP0103List}" var="article" begin="10" end="19" varStatus="status">
					<ul>
						<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img src="<spring:url value="${article.titleImage}"/>"  width="121" height="91"/></a></li>
						<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
					</ul>
				</c:forEach>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</div>