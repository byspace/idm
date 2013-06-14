<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 - 培训视频 --%>

<div class="box10_right">
	<div id="head">
		<ul class="nav_left">
			<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0213"/>" target="_blank"><span>培训视频</span></a></li>
			<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>News centre</span></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box10_right_body">

		<c:forEach items="${TP0213List}" var="article" begin="0" end="0">
			<div class="box_top">
				<ul >
					<li id="list_top" class="box10_01">
						<a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="95" height="70" src="<spring:url value="${article.titleImage}"/>" /> </a>
					</li>
					<li  id="box06_news_live"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong><br />${article.summary}</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</c:forEach>


		<div class="text">
			<ul class="left_list" >

				<c:forEach items="${TP0213List}" var="article" begin="1" end="7">
					<li id="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>

				<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;" id="more_btn"><a href="<spring:url value="/portal/topic/list/TP0213"/>" target="_blank">更多.</a></li>
			</ul>
		</div>
	</div>
</div>