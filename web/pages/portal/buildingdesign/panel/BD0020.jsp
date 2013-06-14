<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%-- 建筑设计 - 设计论文 --%>

<div class="box10_mid">
	<div id="head">
		<ul class="nav_left">
			<li class="nav_left_top" style="background: url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0311"/>" target="_blank"><span>设计论文</span></a></li>
			<li class="nav_left_bottom" style="background: url('<spring:url value="/static/img/icon02.png"/>') no-repeat;"><span>Thesis</span></li>
		</ul>
	</div>
	<div class="text">
		<ul class="left_list" >

			<c:forEach items="${thesisList}" var="article" begin="0" end="10">
				<li id="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
			</c:forEach>

			<li class="nav_right" style="background:url('<spring:url value="/static/img/btn_bg01.png"/>') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0311"/>" target="_blank">更多.</a></li>
		</ul>
	</div>
</div>