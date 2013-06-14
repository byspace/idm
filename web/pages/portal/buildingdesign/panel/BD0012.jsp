<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 - 办公建筑 --%>

<div class="box06_left">
	<div class="box06_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0208"/>" target="_blank"><span>办公建筑</span></a></li>
					<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>Office</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0208"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box06_body">
		<div class="box06_left_left">
			<ul class="left_list" >

				<c:forEach items="${TP0208List}" var="article" begin="0" end="10">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>

			</ul>
		</div>
		<div class="box06_left_right">

			<c:forEach items="${TP0208List}" var="article" begin="11" end="11">
				<div class="box_top">
					<ul >
						<li id="list_top" class="box06_01"><img width="212" height="143" src="<spring:url value="${article.titleImage}"/>" /></li>
						<li  id="box06_news_live"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong><br />${article.summary}</a></li>
					</ul>
					<div class="clear"></div>
				</div>
			</c:forEach>


			<div class="work">

				<c:forEach items="${TP0208List}" var="article" begin="12" end="14">
					<ul>
						<li id="work_img"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="114" height="90" src="<spring:url value="${article.titleImage}"/>" /></a></li>
						<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
					</ul>
				</c:forEach>

			</div>
		</div>
	</div>
</div>