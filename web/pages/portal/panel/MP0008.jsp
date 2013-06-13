<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%--主页 - 摄影展示--%>
<script type="text/javascript">
	$(function(){
		$('.flexslider').flexslider({
			animation: "slide"
		});
	});
</script>

<div class="photo_show">
	<div>
		<ul class="head">
			<li class="heading"><a href="http://preview.93idm.com/static/column/landscapedesign/buildingphoto.html/landscapedesign" target="_blank"><strong><span style="color:#399b9a">摄景</span>展示</strong></a></li>
			<li class="more"><a href="http://preview.93idm.com/static/column/landscapedesign/buildingphoto.html/landscapedesign" target="_blank">+ 更多</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="flexslider" style="width: 294px; float: left">
		<ul class="slides">
			<c:forEach items="${photoArticles}" var="article" begin="0" end="3">
				<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img width="294" height="264" src="<spring:url value="${article.titleImage}" />"></a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="work">
		<c:forEach items="${photoArticles}" var="article" begin="4" end="11">
			<ul>
				<li><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank"><img src="<spring:url value="${article.titleImage}" />" width="115" height="90"></a></li>
				<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">${article.subject}</a></li>
			</ul>
		</c:forEach>
	</div>
	<div class="clear"></div>
</div>
