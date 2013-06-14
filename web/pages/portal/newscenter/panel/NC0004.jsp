<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--资讯中心 - 名人访谈--%>

<div class="main_box03">
	<div class="main_box03_top">
		<ul class="title">
			<li class="nav_left">
				<ul>
					<li class="nav_left_top" style="background:url('<spring:url value="/static/img/icon01.png"/>') no-repeat top left;"><a href="<spring:url value="/portal/topic/list/TP0602"/>" target="_blank"><span>名人访谈</span></a></li>
			<li class="nav_left_bottom" style="background:url('<spring:url value="/static/img/icon02.png"/>') no-repeat top left;"><span>Intervisit</span></li>
		</ul>
		</li>
		<li class="nav_right"  style="background:url('<spring:url value="/static/img/btn_bg01.png" />') no-repeat;" id="desighner"><a href="<spring:url value="/portal/topic/list/TP0602"/>">更多.</a></li>
		</ul>
	</div>
	<div class="main_box03_body">
		<div class="main_box03_body_left">
			<ul class="left_list">
				<li class="left_list_top">
					<c:forEach items="${intervisitList}" var="article" begin="0" end="0">
						<ul>
							<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="131" height="105" src="<spring:url value="${article.titleImage}"/>"  /></a></li>
							<li class="text"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><span><strong>${article.subject}</strong></span><br />
								　${article.summary}</a>
							</li>
							<div class="clear"></div>
						</ul>
					</c:forEach>
				</li>
				<c:forEach items="${intervisitList}" var="article" begin="1" end="14">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="shadow"><img src="<spring:url value="/static/img/shadow.png"/>" /></div>
		<div class="main_box03_body_mid">
			<ul class="left_list">
				<li class="left_list_top">

					<c:forEach items="${intervisitList}" var="article" begin="15" end="15">
						<ul>
							<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="117" height="72" src="<spring:url value="${article.titleImage}"/>"  /></a></li>
							<li class="text" id="body_mid"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><span><strong>${article.subject}</strong></span><br />
									${article.summary} </a>
							</li>
							<div class="clear"></div>
						</ul>
					</c:forEach>


				</li>

				<c:forEach items="${intervisitList}" var="article" begin="16" end="24">
					<li id="body_mid_text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>

			</ul>
			<div class="work">
				<c:forEach items="${intervisitList}" var="article" begin="25" end="27">
					<ul>
						<li><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank"><img width="88" height="68" src="<spring:url value="${article.titleImage}"/>" /></a></li>
						<li class="title" id="ie_title"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">${article.subject} </a></li>
					</ul>
				</c:forEach>
			</div>
		</div>
		<div class="main_box03_body_right">
			<ul class="left_list">
				<c:forEach items="${intervisitList}" var="article" begin="28" end="46">
					<li class="text_hide"><a href="<spring:url value="/portal/article/view/${article.id}"/>" target="_blank">·${article.subject}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>