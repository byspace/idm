<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/information.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="post" />

<div class="container">
	<div class="main">
		<%@ include file="left.jsp"%>
		<div class="right">
			<div class="right_top" style="background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>设计案例</span></div>
		<div class="right_bottom">
			<div class="right_bottom">

				<table width="98%">
					<c:forEach items="${personalPostList}" var="post">

						<tr>
							<td style="padding-bottom: 10px; border-bottom: 1px solid #ccc">
								<ul>
									<li style="font-size:14px;">
										<span style="font-weight: bold"><a href="<spring:url value="/portal/usercenter/personal/post/view/${post.id}"/>">[${post.title}]</a></span>
										&nbsp;&nbsp;
										<span style="font-size: 12px;">发布时间：<fmt:formatDate value="${post.createDate}" pattern="yyyy-MM-dd" /></span>
										<c:if test="${isCurrentUser}"><a class="editLink" href="<spring:url value="/portal/usercenter/personal/post/edit/${post.id}"/>" target="_blank">&nbsp;编辑</a></c:if>
									</li>
									<li style="text-indent:20px; color:#999"></li>
									<li style="width: 450px; text-indent:20px;word-wrap: break-word;">${post.summary}</li>
								</ul>
							</td>
						</tr>


					</c:forEach>
				</table>

				<div class="clear"></div>
			</div>

			<c:if test="${isCurrentUser}"><div><a class="editLink" href="<spring:url value="/portal/usercenter/personal/post/add"/>" target="_blank">添加设计博文</a></div></c:if>
		</div>
	</div>
	<div class="clear"></div>

<%@include file="personal_bottom.jsp"%>