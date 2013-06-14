<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 新闻咨询--%>
<script type="text/javascript">
	$(function(){
		$('.flexslider').flexslider({
			animation: "slide",
			controlNav: "thumbnails"
		});
	});
</script>

<div class="main_box01_left">
	<div class="indexCon fl">
		<div class="flashBanner">
			<a href="#"><img class="bigImg" width="290" height="290" /></a>
			<div class="mask">
				<c:forEach items="${TP0101List}" var="article" begin="0" end="2">
					<img src="<spring:url value="${article.titleImage}"/>" uri="<spring:url value="${article.titleImage}"/>" link="<spring:url value="/portal/article/view/${article.id}"/>" width="84" height="70"/>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="news_info">
		<div class="main_box01_right_top">
			<ul class="title">
				<li class="nav_left">
					<ul>
						<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0101" />" target="_blank"><span>新闻资讯</span></a></li>
				<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>News and info</span></li>
			</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;"><a href="<spring:url value="/portal/topic/list/TP0101" />">更多.</a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="main_box01_right_bottom">
			<ul class="con_news">

				<c:forEach items="${TP0101List}" begin="3" end="9" var="article" varStatus="status">
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
						<c:if test="${status.first}"><strong></c:if>
						[${article.category.name}]${article.subject}
						<c:if test="${status.first}"></strong></c:if>
					</a></li>
				</c:forEach>

			</ul>
			<ul class="con_news">
				<c:forEach items="${TP0101List}" begin="10" end="15" var="article" varStatus="status">
					<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
						<c:if test="${status.first}"><strong></c:if>
						[${article.category.name}]${article.subject}
						<c:if test="${status.first}"></strong></c:if>
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>