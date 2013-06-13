<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 活动公告--%>

<div class="main_box01_right">
	<div class="main_box01_right_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="http://www.93idm.com/static/column/infocenter/iactivitybulletin.html/infocenter" target="_blank"><span>活动公告</span></a></li>
					<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Activity Notice</span></li>
				</ul>
			</li>
			<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="activity"><a href="<spring:url value="/portal/topic/listArticle/10"/>">更多.</a></li>
		</ul>
	</div>
	<div class="main_box01_right_bottom">
		<ul class="viedo">
			<li>
				<a href="http://www.93idm.com/column/videodetail.shtml" target="_blank"><img src="/img/video02.jpg" /> </a>
				<a href="http://www.93idm.com/column/videodetail.shtml" target="_blank" style="margin:3px 0 0 20px;">    国际设计展</a>
			</li>
			<li>  <a href="http://www.93idm.com/column/videodetail.shtml" target="_blank"><img src="/img/video02.jpg" /> </a>
				<a href="http://www.93idm.com/column/videodetail.shtml" target="_blank" style="margin:3px 0 0 20px;">    国际设计展</a>
			</li>
		</ul>
		<div class="clear"></div>
		<ul class="con_news" id="box01_right_bottom_text">
			<c:forEach items="${activityList}" var="article" begin="2" end="10" varStatus="status">
				<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">
					<c:if test="${status.first}"><strong></c:if>
					<span id="title">${article.subject}</span>
					<c:if test="${status.first}"></strong></c:if>
				</a></li>
			</c:forEach>
		</ul>
	</div>
</div>