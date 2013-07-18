<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/information.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="design" />

<div class="container">
	<div class="main">
		<%@ include file="left.jsp"%>
		<div class="right">
			<div class="right_top" style="background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>设计案例</span></div>
		<div class="right_bottom">
			<div class="right_bottom">

				<table>
					<c:forEach items="${designTypeList}" var="design">

						<tr>
							<td style="padding: 10px"><a href="#"><img src="${design.titleImage}" width="120px" height="95px"></a></td>
							<td>
								<ul>
									<li style="font-size:14px;"><a href="<spring:url value="/portal/usercenter/personal/design/view/${design.id}"/>">[${design.title}]</a><c:if test="${isCurrentUser}"><a class="editLink" href="<spring:url value="/portal/usercenter/personal/design/edit/${design.id}"/>" target="_blank">&nbsp;编辑</a></c:if></li>
									<li style="text-indent:20px; color:#999">作品类型：${design.type}   发布时间：<fmt:formatDate value="${design.createDate}" pattern="yyyy-MM-dd" /></li>
									<li style="width: 450px; text-indent:20px;word-wrap: break-word;">${design.summary}</li>
								</ul>
							</td>
						</tr>


					</c:forEach>
				</table>

				<div class="clear"></div>
			</div>

			<c:if test="${isCurrentUser}"><div><a class="editLink" href="<spring:url value="/portal/usercenter/personal/design/add"/>" target="_blank">添加设计案例</a></div></c:if>
		</div>
	</div>
	<div class="clear"></div>

<%@include file="personal_bottom.jsp"%>