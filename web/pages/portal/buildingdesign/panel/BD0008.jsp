<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 -居住建筑 --%>


<div class="box04_left">
	<div class="box04_left_top">
		<ul id="head">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0206"/>" target="_blank"><span>居住建筑</span></a></li>
					<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>Room</span></li>
				</ul>
			</li>
			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0206"/>" target="_blank">更多.</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="box04_left_bottom">
		<div class="box04_left_bottom_left">
			<ul >
				<c:forEach items="${TP0206List}" var="article" begin="0" end="0">
					<li id="image"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="236" height="178" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					<li class="title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><strong>${article.subject}</strong></a></li>
					<li id="text"><a href="#" target="_blank">${article.summary}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="work">

			<c:forEach items="${TP0206List}" var="article" begin="1" end="3">
				<ul>
					<li id="image"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="110" height="87" src="<spring:url value="${article.titleImage}"/>" /></a></li>
					<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject}</a></li>
				</ul>
			</c:forEach>

			<div class="clear"></div>
			<div class="text">
				<ul class="left_list" >

					<c:forEach items="${TP0206List}" var="article" begin="4" end="10">
						<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>
</div>